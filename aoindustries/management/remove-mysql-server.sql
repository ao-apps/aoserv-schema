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
  case when ia."inetAddress"='0.0.0.0' then '*' else host(ia."inetAddress") end as "BIND_ADDRESS",
  nb.port as "PORT",
  case when (
    select ms2.pkey from mysql."MysqlServer" ms2 where
      ms2.ao_server=ms.ao_server and ms2.version=ms.version and ms2.pkey!=ms.pkey
    limit 1
  ) is not null then 'Yes' else 'No' end as "HAS_OTHER_SAME_VERSION",
  case when (
    select ms2.pkey from mysql."MysqlServer" ms2 where
      ms2.ao_server=ms.ao_server and ms2.pkey!=ms.pkey
    limit 1
  ) is not null then 'Yes' else 'No' end as "HAS_OTHER_ANY_VERSION"
from
             public.ao_servers                     ao
  inner join mysql."MysqlServer"                   ms  on ao.server                   =  ms.ao_server
  inner join distribution."SoftwareVersion"        tv  on ms.version                  =  tv.pkey
  inner join distribution."OperatingSystemVersion" osv on tv.operating_system_version = osv.pkey
  inner join public.net_binds                      nb  on ms.net_bind                 =  nb.pkey
  inner join public."IPAddress"                    ia  on nb."ipAddress"              =  ia.id;

revoke all    on management."remove-mysql-server" from aoadmin;
grant  select on management."remove-mysql-server" to   aoadmin;
