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

create or replace view
  "mysql.management"."Database.remove-canceled"
as
select
  bu.accounting,
  'remove_mysql_database ' || md."name" || ' ' || ms."name" || ' ' || ao.hostname as aosh_command,
  ao.hostname,
  ms."name" as mysql_server,
  md."name"
from
             mysql."Database"    md
  inner join mysql."Server"      ms on md.mysql_server = ms.bind
  inner join linux."Server"      ao on ms.ao_server    = ao.server
  inner join billing."Package"   pk on md.package      = pk."name"
  inner join account."Account"   bu on pk.accounting   = bu.accounting
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on "mysql.management"."Database.remove-canceled" from aoadmin;
grant  select on "mysql.management"."Database.remove-canceled" to   aoadmin;
