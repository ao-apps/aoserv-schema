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

create sequence "net.reputation"."Set_id_seq" cycle;
grant all    on "net.reputation"."Set_id_seq" to aoadmin;
grant select on "net.reputation"."Set_id_seq" to aoserv_app;

-- TODO: Track the last time new reputation data was added, and monitor for failed reputation sources.
create table "net.reputation"."Set" (
  -- identifier is non-null and unique, but this primary key exists for more compact foreign keys to this table
  id integer
    default nextval('"net.reputation"."Set_id_seq"')
    primary key,
  accounting text
    not null,
  identifier text
    not null
    check (
      "net.reputation"."Set.identifier.validate"(identifier) IS NULL
    )
    unique,
  -- Allows a subaccount to use the set.  They cannot query the specific set members, however.
  allow_subaccount_use boolean
    not null,
  max_hosts integer
    not null
    check (max_hosts>0),
  max_uncertain_reputation smallint
    not null
    check (
        max_uncertain_reputation>=0
    ),
  max_definite_reputation smallint
    not null
    check (
        max_definite_reputation>=1
    ),
  check (
    -- Definite must equal to or be higher than uncertain
    max_definite_reputation>=max_uncertain_reputation
  ),
  network_prefix smallint
    not null
    check (network_prefix>=8 and network_prefix<=31),
  max_network_reputation smallint
    not null
    check (
        -- There must be enough bits in 31-bits to store counters for an network with both maximum reputation and size.
        -- Maximum network size is /8, which takes 24 bits for counters, leaving 8 bits.
        max_network_reputation>=1 and max_network_reputation<=127
    ),
  host_decay_interval integer
    not null
    check (host_decay_interval>=60),
  last_host_decay timestamp with time zone
    not null
    default now(),
  network_decay_interval integer
    not null
    check (network_decay_interval>=60),
  last_network_decay timestamp with time zone
    not null
    default now(),
  last_reputation_added timestamp with time zone -- TODO: Monitor when no new reputation for a certain amount of time
    not null
    default now()
);
grant all            on "net.reputation"."Set" to aoadmin;
grant select, update on "net.reputation"."Set" to aoserv_app;
