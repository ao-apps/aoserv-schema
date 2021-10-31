/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2021  AO Industries, Inc.
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

-- See http://localhost:8080/docs/ao/management/postgresql/upgrade-postgresql-server#procedure
create or replace view
  "postgresql.management"."Server.upgrade"
as
select
  (select count(*) from postgresql."Database" pd where
    pd.postgres_server = ps.bind and pd."name" not in (
      'template0', 'template1', 'aoserv', 'postgresmon'
  )) as num_databases,
  (select count(*) from postgresql."UserServer" psu where
    psu.postgres_server = ps.bind and psu.username not in (
      'postgres', 'postgresmon'
  )) as num_users,
  ao.hostname as "SERVER",
  case when osv.operating_system = 'centos' then 'CentOS' else osv.operating_system end
    || ' ' || osv.version_number as "OS",
  ps."name" as "OLD_NAME",
  substring(tv.version from '^\d+\.\d+') as "OLD_VERSION",
  nb.package as "PACKAGE",
  ps.max_connections as "MAX_CONNECTIONS",
  ps.sort_mem as "WORK_MEM",
  ps.shared_buffers as "SHARED_BUFFERS",
  case
    when ia."inetAddress" = '127.0.0.1' then 'localhost'
    when ia."inetAddress" = '0.0.0.0' then '*'
    else ia."inetAddress"::text
  end as "BIND_ADDRESS",
  nb.port as "PORT"
from
             linux."Server"                         ao
  inner join postgresql."Server"                    ps on ao.server                   =  ps.ao_server
  inner join distribution."SoftwareVersion"         tv on ps.version                  =  tv.id
  inner join distribution."OperatingSystemVersion" osv on tv.operating_system_version = osv.id
  inner join net."Bind"                             nb on ps.bind                     =  nb.id
  inner join net."IpAddress"                        ia on nb."ipAddress"              =  ia.id;

revoke all    on "postgresql.management"."Server.upgrade" from aoadmin;
grant  select on "postgresql.management"."Server.upgrade" to   aoadmin;
grant  select on "postgresql.management"."Server.upgrade" to   management;
