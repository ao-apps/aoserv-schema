-- See http://localhost:8080/docs/ao/management/mysql/remove-mysql-server#procedure
create or replace view
  management."remove-mysql-server"
as
select
  (select count(*) from public.mysql_databases md where
    md.mysql_server=ms.pkey and md."name" not in (
      'mysql', 'information_schema', 'performance_schema', 'sys', 'mysqlmon'
  )) as num_databases,
  (select count(*) from public.mysql_server_users msu where
    msu.mysql_server=ms.pkey and msu.username not in (
      'root', 'mysql.session', 'mysql.sys', 'mysqlmon'
  )) as num_users,
  ao.hostname as "SERVER",
  case when osv.operating_system='centos' then 'CentOS' else osv.operating_system end
    || ' ' || osv.version_number as "OS",
  ms."name" as "NAME",
  substring(tv.version from '^\d+\.\d+') as "VERSION",
  case when ia.ip_address='0.0.0.0' then '*' else ia.ip_address end as "BIND_ADDRESS",
  nb.port as "PORT",
  case when (
    select ms2.pkey from public.mysql_servers ms2 where
      ms2.ao_server=ms.ao_server and ms2.version=ms.version and ms2.pkey!=ms.pkey
    limit 1
  ) is not null then 'Yes' else 'No' end as "HAS_OTHER_SAME_VERSION",
  case when (
    select ms2.pkey from public.mysql_servers ms2 where
      ms2.ao_server=ms.ao_server and ms2.pkey!=ms.pkey
    limit 1
  ) is not null then 'Yes' else 'No' end as "HAS_OTHER_ANY_VERSION"
from
             public.ao_servers                ao
  inner join public.mysql_servers             ms  on ao.server                   =  ms.ao_server
  inner join public.technology_versions       tv  on ms.version                  =  tv.pkey
  inner join public.operating_system_versions osv on tv.operating_system_version = osv.pkey
  inner join public.net_binds                 nb  on ms.net_bind                 =  nb.pkey
  inner join public.ip_addresses              ia  on nb.ip_address               =  ia.pkey;

revoke all    on management."remove-mysql-server" from aoadmin;
grant  select on management."remove-mysql-server" to   aoadmin;
