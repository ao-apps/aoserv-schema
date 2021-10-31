/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2019, 2020  AO Industries, Inc.
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

-- See http://localhost:8080/docs/ao/management/postgresql/remove-postgresql-server#procedure
create or replace view
  "postgresql.management"."Server.remove"
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
  ps."name" as "NAME",
  substring(tv.version from '^\d+\.\d+') as "VERSION",
  nb.port as "PORT",
  case when (
    select ps2.bind from postgresql."Server" ps2 where
      ps2.ao_server = ps.ao_server and ps2.version = ps.version and ps2.bind != ps.bind
    limit 1
  ) is not null then 'Yes' else 'No' end as "HAS_OTHER_SAME_VERSION",
  case when (
    select ps2.bind from postgresql."Server" ps2 where
      ps2.ao_server = ps.ao_server and ps2.bind != ps.bind
    limit 1
  ) is not null then 'Yes' else 'No' end as "HAS_OTHER_ANY_VERSION"
from
             linux."Server"                         ao
  inner join postgresql."Server"                    ps on ao.server                   =  ps.ao_server
  inner join distribution."SoftwareVersion"         tv on ps.version                  =  tv.id
  inner join distribution."OperatingSystemVersion" osv on tv.operating_system_version = osv.id
  inner join net."Bind"                             nb on ps.bind                     =  nb.id;

revoke all    on "postgresql.management"."Server.remove" from aoadmin;
grant  select on "postgresql.management"."Server.remove" to   aoadmin;
grant  select on "postgresql.management"."Server.remove" to   management;
