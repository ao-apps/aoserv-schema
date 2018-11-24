-- See http://localhost:8080/docs/ao/management/postgresql/remove-postgresql-server#procedure
create or replace view
  management."remove-postgresql-server"
as
select
  (select count(*) from public.postgres_databases pd where
    pd.postgres_server=ps.pkey and pd."name" not in (
      'template0', 'template1', 'aoserv'
  )) as num_databases,
  (select count(*) from public.postgres_server_users psu where
    psu.postgres_server=ps.pkey and psu.username not in (
      'postgres', 'postgresmon'
  )) as num_users,
  ao.hostname as "SERVER",
  case when osv.operating_system='centos' then 'CentOS' else osv.operating_system end
    || ' ' || osv.version_number as "OS",
  ps."name" as "NAME",
  substring(tv.version from '^\d+\.\d+') as "VERSION",
  nb.port as "PORT",
  case when (
    select ps2.pkey from public.postgres_servers ps2 where
      ps2.ao_server=ps.ao_server and ps2.version=ps.version and ps2.pkey!=ps.pkey
    limit 1
  ) is not null then 'Yes' else 'No' end as "HAS_OTHER_SAME_VERSION",
  case when (
    select ps2.pkey from public.postgres_servers ps2 where
      ps2.ao_server=ps.ao_server and ps2.pkey!=ps.pkey
    limit 1
  ) is not null then 'Yes' else 'No' end as "HAS_OTHER_ANY_VERSION"
from
             linux."LinuxServer"                    ao
  inner join public.postgres_servers                ps on ao.server                   =  ps.ao_server
  inner join distribution."SoftwareVersion"         tv on ps.version                  =  tv.pkey
  inner join distribution."OperatingSystemVersion" osv on tv.operating_system_version = osv.pkey
  inner join public.net_binds                       nb on ps.net_bind                 =  nb.pkey;

revoke all    on management."remove-postgresql-server" from aoadmin;
grant  select on management."remove-postgresql-server" to   aoadmin;
