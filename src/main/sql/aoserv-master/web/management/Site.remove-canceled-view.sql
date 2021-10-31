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
  "web.management"."Site.remove-canceled"
as
select
  bu.accounting,
  'remove_httpd_site ' || hs."name" || ' ' || ao.hostname as aosh_command,
  ao.hostname,
  hs."name"
from
             web."Site"          hs
  inner join linux."Server"      ao on hs.ao_server  = ao.server
  inner join billing."Package"   pk on hs.package    = pk."name"
  inner join account."Account"   bu on pk.accounting = bu.accounting
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on "web.management"."Site.remove-canceled" from aoadmin;
grant  select on "web.management"."Site.remove-canceled" to   aoadmin;
