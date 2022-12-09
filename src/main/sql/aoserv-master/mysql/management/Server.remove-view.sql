/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020, 2022  AO Industries, Inc.
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

-- See http://localhost:8080/docs/ao/management/mysql/remove-mysql-server#procedure
create or replace view
  "mysql.management"."Server.remove"
as
select
  (select count(*) from mysql."Database" md where
    md.mysql_server=ms.bind and md."name" not in (
      'mysql', 'information_schema', 'performance_schema', 'sys', 'mysqlmon'
  )) as num_databases,
  (select count(*) from mysql."UserServer" msu where
    msu.mysql_server=ms.bind and msu.username not in (
      'root', 'mysql.session', 'mysql.sys', 'mysqlmon'
  )) as num_users,
  ao.hostname as "SERVER",
  case
    when osv.operating_system = 'centos' then 'CentOS'
    when osv.operating_system = 'rocky' then 'Rocky'
    else osv.operating_system
  end || ' ' || osv.version_number as "OS",
  ms."name" as "NAME",
  substring(tv.version from '^\d+\.\d+') as "VERSION",
  case when ia."inetAddress"='0.0.0.0' then '*' else host(ia."inetAddress") end as "BIND_ADDRESS",
  nb.port as "PORT",
  case when (
    select ms2.bind from mysql."Server" ms2 where
      ms2.ao_server=ms.ao_server and ms2.version=ms.version and ms2.bind!=ms.bind
    limit 1
  ) is not null then 'Yes' else 'No' end as "HAS_OTHER_SAME_VERSION",
  case when (
    select ms2.bind from mysql."Server" ms2 where
      ms2.ao_server=ms.ao_server and ms2.bind!=ms.bind
    limit 1
  ) is not null then 'Yes' else 'No' end as "HAS_OTHER_ANY_VERSION"
from
             linux."Server"                        ao
  inner join mysql."Server"                        ms  on ao.server                   =  ms.ao_server
  inner join distribution."SoftwareVersion"        tv  on ms.version                  =  tv.id
  inner join distribution."OperatingSystemVersion" osv on tv.operating_system_version = osv.id
  inner join net."Bind"                            nb  on ms.bind                     =  nb.id
  inner join net."IpAddress"                       ia  on nb."ipAddress"              =  ia.id;

revoke all    on "mysql.management"."Server.remove" from aoadmin;
grant  select on "mysql.management"."Server.remove" to   aoadmin;
grant  select on "mysql.management"."Server.remove" to   management;
