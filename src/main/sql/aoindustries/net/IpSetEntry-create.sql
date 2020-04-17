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
-- Tracks the entries for ip sets
create sequence         net."IpSetEntry_id_seq" cycle;
grant all            on net."IpSetEntry_id_seq" to aoadmin;
grant select, update on net."IpSetEntry_id_seq" to aoserv_app;

create table net."IpSetEntry" (
  id bigint
    default nextval('net."IpSetEntry_id_seq"')
    primary key,
  "set" integer
    not null,
  -- TODO: Switch to "inet" type
  entry integer -- The big-endian 32-bit IP address/network.
    not null,
  "prefix" smallint
    not null
    check ("prefix">=1 and "prefix"<=32),
  created timestamp with time zone
    not null,
  created_by text
    not null,
  expiration timestamp with time zone, -- TODO: Write daemon component to remove from ipset once expired
  description text not null,
  check (
    expiration is null or expiration>=created
  ),
  unique("set", entry, "prefix")
);
grant all            on net."IpSetEntry" to aoadmin;
grant select, insert on net."IpSetEntry" to aoserv_app;
 */
