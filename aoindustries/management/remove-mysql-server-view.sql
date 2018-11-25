-- See http://localhost:8080/docs/ao/management/mysql/remove-mysql-server#procedure
create or replace view
  management."remove-mysql-server"
as
select
  (select count(*) from mysql."Database" md where
    md.mysql_server=ms.net_bind and md."name" not in (
      'mysql', 'information_schema', 'performance_schema', 'sys', 'mysqlmon'
  )) as num_databases,
  (select count(*) from mysql."UserServer" msu where
    msu.mysql_server=ms.net_bind and msu.username not in (
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
    select ms2.net_bind from mysql."Server" ms2 where
      ms2.ao_server=ms.ao_server and ms2.version=ms.version and ms2.net_bind!=ms.net_bind
    limit 1
  ) is not null then 'Yes' else 'No' end as "HAS_OTHER_SAME_VERSION",
  case when (
    select ms2.net_bind from mysql."Server" ms2 where
      ms2.ao_server=ms.ao_server and ms2.net_bind!=ms.net_bind
    limit 1
  ) is not null then 'Yes' else 'No' end as "HAS_OTHER_ANY_VERSION"
from
             linux."Server"                        ao
  inner join mysql."Server"                        ms  on ao.server                   =  ms.ao_server
  inner join distribution."SoftwareVersion"        tv  on ms.version                  =  tv.pkey
  inner join distribution."OperatingSystemVersion" osv on tv.operating_system_version = osv.pkey
  inner join net."Bind"                            nb  on ms.net_bind                 =  nb.pkey
  inner join net."IpAddress"                       ia  on nb."ipAddress"              =  ia.id;

revoke all    on management."remove-mysql-server" from aoadmin;
grant  select on management."remove-mysql-server" to   aoadmin;
