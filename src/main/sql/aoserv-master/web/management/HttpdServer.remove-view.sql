/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020  AO Industries, Inc.
 *     support@aoindustries.com
 *     7262 Bull Pen Cir
 *     Mobile, AL 36695
 *
 * This file is part of aoserv-schema.
 *
 * aoserv-schema is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * aoserv-schema is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with aoserv-schema.  If not, see <https://www.gnu.org/licenses/>.
 */

-- See http://localhost:8080/docs/ao/management/httpd/remove-httpd-server#procedure
create or replace view
  "web.management"."HttpdServer.remove"
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
  inner join net."Host"                            se  on ao.server                   =  se.id
  inner join distribution."OperatingSystemVersion" osv on se.operating_system_version = osv.id;

revoke all    on "web.management"."HttpdServer.remove" from aoadmin;
grant  select on "web.management"."HttpdServer.remove" to   aoadmin;
grant  select on "web.management"."HttpdServer.remove" to   management;
