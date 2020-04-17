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

-- Tracks the per-network reputation for one set.
create sequence         "net.reputation"."Network_id_seq" cycle;
grant all            on "net.reputation"."Network_id_seq" to aoadmin;
grant select, update on "net.reputation"."Network_id_seq" to aoserv_app;

create table "net.reputation"."Network" (
  id bigint
    default nextval('"net.reputation"."Network_id_seq"')
    primary key,
  "set" integer
    not null,
  -- TODO: Switch to "cidr" type
  network integer -- The big-endian 32-bit IP address, with zeroes in network range lower bits.
    not null
    check (network!=0),
  counter integer
    not null
    check (counter>0), -- Will be deleted once decays back to zero
  unique("set", network)
);
grant all                            on "net.reputation"."Network" to aoadmin;
grant select, insert, update, delete on "net.reputation"."Network" to aoserv_app;
