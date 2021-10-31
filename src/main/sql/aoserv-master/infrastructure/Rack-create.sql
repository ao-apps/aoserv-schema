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

create sequence infrastructure."Rack_id_seq" cycle;
grant all    on infrastructure."Rack_id_seq" to aoadmin;
grant select on infrastructure."Rack_id_seq" to aoserv_app;

create table infrastructure."Rack" (
  id integer
    default nextval('infrastructure."Rack_id_seq"')
    primary key,
  farm text
    not null,
  "name" text
    not null,
  max_power real
    check (max_power is null or max_power>0),
  total_rack_units integer
    check (total_rack_units is null or total_rack_units>0),
  unique(farm, "name")
);
grant all    on infrastructure."Rack" to aoadmin;
grant select on infrastructure."Rack" to aoserv_app;
