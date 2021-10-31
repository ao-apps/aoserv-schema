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
  "account.management"."Username.remove-canceled"
as
select
  bu.accounting,
  'remove_username ' || un.username as aosh_command,
  un.username
from
             account."User"    un
  inner join billing."Package" pk on un.package    = pk."name"
  inner join account."Account" bu on pk.accounting = bu.accounting
  -- business_administrators remain even after canceled
  left  join account."Administrator" ba on un.username   = ba.username
where
  -- account.Administrator remain even after canceled
  ba.username is null
  and bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on "account.management"."Username.remove-canceled" from aoadmin;
grant  select on "account.management"."Username.remove-canceled" to   aoadmin;
