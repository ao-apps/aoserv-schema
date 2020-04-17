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
 * along with aoserv-schema.  If not, see <http://www.gnu.org/licenses/>.
 */

create or replace view
  "net.management"."Bind.remove-canceled"
as
select
  bu.accounting,
  -- TODO: A non-id selector might be more helpful, like done for the remove_dns_record command
  -- TODO: Would be based on matching the add_net_bind command, but for unique set of columns, currently (server, ip_address, port, net_protocol)
  'echo "' || nb.package || '"
remove_net_bind ' || nb.id as aosh_command,
  nb.port
from
             net."Bind"        nb
  inner join billing."Package" pk on nb.package    = pk."name"
  inner join account."Account" bu on pk.accounting = bu.accounting
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on "net.management"."Bind.remove-canceled" from aoadmin;
grant  select on "net.management"."Bind.remove-canceled" to   aoadmin;
