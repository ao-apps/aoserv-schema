/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2008, 2011, 2012, 2018, 2020  AO Industries, Inc.
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

create table infrastructure."PhysicalServer" (
  server integer
    primary key,
  rack integer,
  rack_units smallint
    check (rack_units is null or rack_units > 0),
  ram integer
    check (ram is null or ram > 0),
  processor_type text,
  processor_speed integer
    check (processor_speed is null or processor_speed > 0),
  processor_cores integer
    check (processor_cores is null or processor_cores > 0),
  max_power real
    check (max_power is null or max_power > 0),
  supports_hvm boolean,
  ups_type infrastructure."PhysicalServer.UpsType"
    not null
    default 'none'
);
grant all    on infrastructure."PhysicalServer" to aoadmin;
grant select on infrastructure."PhysicalServer" to aoserv_app;
