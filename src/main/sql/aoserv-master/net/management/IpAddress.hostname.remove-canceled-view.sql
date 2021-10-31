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
  "net.management"."IpAddress.hostname.remove-canceled"
as
select
  bu.accounting,
  'set_ip_address_hostname '
  || ia."inetAddress"
  || ' ' || coalesce(ao.hostname, se.id::text)
  || ' ' || nd."deviceId"
  || ' ' || case
    when inet '66.160.183.0/24' >> "inetAddress" then
      'unassigned' || split_part(host("inetAddress"), '.', 4) || '.net1.fc.aoindustries.com'
    when inet '64.62.174.0/24' >> "inetAddress" then
      'unassigned' || split_part(host("inetAddress"), '.', 4) || '.net2.fc.aoindustries.com'
    when inet '64.71.144.0/25' >> "inetAddress" then
      'unassigned' || split_part(host("inetAddress"), '.', 4) || '.net3.fc.aoindustries.com'
    else
      "schema".raise_exception('IP pattern unknown: ' || "inetAddress")
  end as aosh_command,
  ao.hostname,
  ia."inetAddress"
from
             net."IpAddress"   ia
  inner join billing."Package" pk on ia.package    = pk.id
  inner join account."Account" bu on pk.accounting = bu.accounting
  inner join net."Device"      nd on ia.device     = nd.id
  inner join net."Host"        se on nd.server     = se.id
  left  join linux."Server"    ao on se.id         = ao.server
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on "net.management"."IpAddress.hostname.remove-canceled" from aoadmin;
grant  select on "net.management"."IpAddress.hostname.remove-canceled" to   aoadmin;
