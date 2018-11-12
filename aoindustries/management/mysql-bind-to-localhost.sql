-- See http://localhost:8080/docs/ao/software/3rd-party/mysql/bind-to-localhost#procedure
create or replace view
  management."mysql-bind-to-localhost"
as
select
  ia.ip_address,
  ao.hostname as "SERVER",
  ms."name" as "NAME",
  nb.pkey as "NET_BIND",
  array_to_string(
    array(
      select fz."name" from
                        public.net_bind_firewalld_zones nbfz
        left outer join public.firewalld_zones            fz on nbfz.firewalld_zone = fz.pkey
      where
        nb.pkey=nbfz.net_bind
      order by fz."name"
    ), ' '
  ) as "ZONES",
  (select (regexp_matches(nb.monitoring_parameters, '(?:^|&)password=([^&]*)(?:&|$)'))[1]) as "OLD_MONITORING_PASSWORD"
from
             public.ao_servers    ao
  inner join public.mysql_servers ms on ao.server     = ms.ao_server
  inner join public.net_binds     nb on ms.net_bind   = nb.pkey
  inner join public.ip_addresses  ia on nb.ip_address = ia.pkey
where
  ia.ip_address!='127.0.0.1';

revoke all on management."mysql-bind-to-localhost" from aoadmin;
grant select on management."mysql-bind-to-localhost" to aoadmin;
