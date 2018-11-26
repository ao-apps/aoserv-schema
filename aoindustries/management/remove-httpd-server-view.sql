-- See http://localhost:8080/docs/ao/management/httpd/remove-httpd-server#procedure
create or replace view
  management."remove-httpd-server"
as
select
  (
    select count(*) from
                 web."HttpdBind"   hb
      inner join web."VirtualHost" hsb on hb.net_bind = hsb.httpd_bind
    where
      hs.id = hb.httpd_server
  ) as num_site_binds,
  ao.hostname as "SERVER",
  case when osv.operating_system='centos' then 'CentOS' else osv.operating_system end
    || ' ' || osv.version_number as "OS",
  hs."name" as "NAME",
  case when exists(
    select hs2.id from web."HttpdServer" hs2 where
      hs2.ao_server=hs.ao_server and hs2.id != hs.id
  ) then 'Yes' else 'No' end as "HAS_OTHER",
  -- Find all ports that were associated with this server but will now be unused, used for managed firewall
  array_to_string(
    array(
      select unused_ports.port || '/' || unused_ports.net_protocol from (
        select distinct nb.port, nb.net_protocol from
                     web."HttpdBind" hb
          inner join net."Bind"      nb on hb.net_bind = nb.id
        where
          hs.id = hb.httpd_server
          -- Remove ports that are on the server but not part of this server
          and (nb.port, nb.net_protocol) not in (
            select nb2.port, nb2.net_protocol from
              net."Bind" nb2
            where
              hs.ao_server = nb2.server
              and nb2.id not in (
                select nb3.id from
                             web."HttpdBind" hb3
                  inner join net."Bind"      nb3 on hb3.net_bind = nb3.id
                where
                  hs.id = hb3.httpd_server
              )
          )
      ) unused_ports
      order by unused_ports.port, unused_ports.net_protocol
    ), ' '
  ) as "PORTS_NOW_UNUSED"
from
             linux."Server"                        ao
  inner join web."HttpdServer"                     hs  on ao.server                   =  hs.ao_server
  inner join server."Server"                       se  on ao.server                   =  se.id
  inner join distribution."OperatingSystemVersion" osv on se.operating_system_version = osv.id;

revoke all    on management."remove-httpd-server" from aoadmin;
grant  select on management."remove-httpd-server" to   aoadmin;
