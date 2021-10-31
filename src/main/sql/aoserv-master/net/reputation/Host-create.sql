/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2012, 2013, 2018, 2020  AO Industries, Inc.
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

-- Tracks the per-host reputation for one set.
create sequence         "net.reputation"."Host_id_seq" cycle;
grant all            on "net.reputation"."Host_id_seq" to aoadmin;
grant select, update on "net.reputation"."Host_id_seq" to aoserv_app;

create table "net.reputation"."Host" (
  id bigint
    default nextval('"net.reputation"."Host_id_seq"')
    primary key,
  "set" integer
    not null,
  -- TODO: Switch to "inet" type
  "host" integer -- The big-endian 32-bit IP address.
    not null
    check ("host"!=0),
  good_reputation smallint
    not null
    check (
        good_reputation>=0
        -- and good_reputation<=1023: TODO: Less than max_definite_reputation, as a DOMAIN type?
    ),
  bad_reputation smallint
    not null
    check (
        bad_reputation>=0
        -- and bad_reputation<=1023: TODO: Less than max_definite_reputation, as a DOMAIN type?
    ),
  check (
    -- Will be deleted once both decay back to zero
    good_reputation>0
    or bad_reputation>0
  ),
  unique("set", "host")
);
grant all                            on "net.reputation"."Host" to aoadmin;
grant select, insert, update, delete on "net.reputation"."Host" to aoserv_app;
