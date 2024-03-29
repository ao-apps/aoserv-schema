/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2008, 2009, 2011, 2013, 2018, 2020  AO Industries, Inc.
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

create table infrastructure."VirtualServer" (
  server integer primary key,
  primary_ram integer
    not null
    check (primary_ram > 0),
  primary_ram_target integer
    not null
    check (primary_ram_target > 0),
  secondary_ram integer
    check (secondary_ram is null or secondary_ram > 0),
  secondary_ram_target integer
    check (secondary_ram_target is null or secondary_ram_target > 0),
  minimum_processor_type text,
  minimum_processor_architecture text
    not null
    default 'x86_64',
  minimum_processor_speed integer
    check (minimum_processor_speed is null or minimum_processor_speed > 0),
  minimum_processor_speed_target integer
    check (minimum_processor_speed_target is null or minimum_processor_speed_target > 0),
  processor_cores smallint
    not null
    check (processor_cores > 0),
  processor_cores_target smallint
    not null
    check (processor_cores_target > 0),
  processor_weight infrastructure."Weight"
    not null,
  processor_weight_target infrastructure."Weight"
    not null,
  primary_physical_server_locked boolean
    not null
    default false,
  secondary_physical_server_locked boolean
    not null
    default false,
  requires_hvm boolean
    not null
    default false,
  vnc_password text
    unique
    check (length(vnc_password) >= 8) -- Must be at least 8 characters
);
grant all                    on infrastructure."VirtualServer" to aoadmin;
grant select                 on infrastructure."VirtualServer" to aoserv_app;
grant select, insert, update on infrastructure."VirtualServer" to infrastructure;
