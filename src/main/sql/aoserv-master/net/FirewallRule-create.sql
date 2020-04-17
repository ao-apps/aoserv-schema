/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2012, 2018, 2020  AO Industries, Inc.
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

/* TODO
create sequence net."FirewallRule_id_seq" cycle;
grant all    on net."FirewallRule_id_seq" to aoadmin;
grant select on net."FirewallRule_id_seq" to aoserv_app;
 */

--
-- A firewall rule has:
-- 1) Any number of source matches (ANY, host, network, or ip_set) ANY=0.0.0.0/0
-- 2) Any number of destination matches (ANY, host, network, or ip_set) ANY=0.0.0.0/0
-- 3) 8-bit numeric protocol (ALL or numeric) ALL=0
-- 4) Any number of source ports or port ranges (ANY or number:number) ANY=0:65535 (tcp and udp only)
-- 5) Any number of destination ports or port ranges (ANY or number:number) ANY=0:65535 (tcp and udp only)
-- 6) Optional fragment match
-- 7) State module (Connection tracking)
-- 8) ICMP type (icmp only)
-- 9) reject-with (REJECT only, some options depend on protocol)
-- 10) SNAT (must be an IP address on the same net_device)
-- 11) Optional limiter (accept only)
-- 12) Mandatory - rule may not be removed, edited, or reordered
/* TODO
create table net."FirewallRule" (
  id integer
    default nextval('net."FirewallRule_id_seq"')
    primary key,
  net_device integer
    not null,
  sort_order smallint
    not null,
  unique(net_device, sort_order),
  target text
    not null
    check (
        target in ('accept', 'drop', 'reject', 'snat')
    ),
  limiter integer,
  check (
    -- limiter only allowed for accept target
    limiter is null or target='accept'
  ),
  description text not null
);
grant all    on net."FirewallRule" to aoadmin;
grant select on net."FirewallRule" to aoserv_app;
 */
