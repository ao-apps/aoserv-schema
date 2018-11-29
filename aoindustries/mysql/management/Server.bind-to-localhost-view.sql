-- See http://localhost:8080/docs/ao/software/3rd-party/mysql/bind-to-localhost#procedure
create or replace view
  "mysql.management"."Server.bind-to-localhost"
as
select
  ia."inetAddress",
  ao.hostname as "SERVER",
  ms."name" as "NAME",
  nb.id as "NET_BIND",
  array_to_string(
    array(
      select fz."name" from
                  net."BindFirewallZone" nbfz
        left join net."FirewallZone"     fz   on nbfz.firewalld_zone = fz.id
      where
        nb.id = nbfz.net_bind
      order by fz."name"
    ), ' '
  ) as "ZONES",
  (select (regexp_matches(nb.monitoring_parameters, '(?:^|&)password=([^&]*)(?:&|$)'))[1]) as "OLD_MONITORING_PASSWORD"
from
             linux."Server"  ao
  inner join mysql."Server"  ms on ao.server      = ms.ao_server
  inner join net."Bind"      nb on ms.bind        = nb.id
  inner join net."IpAddress" ia on nb."ipAddress" = ia.id
where
  ia."inetAddress" != '127.0.0.1';

revoke all    on "mysql.management"."Server.bind-to-localhost" from aoadmin;
grant  select on "mysql.management"."Server.bind-to-localhost" to   aoadmin;
