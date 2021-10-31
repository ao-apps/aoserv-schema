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

select "schema".add_column('infrastructure', 'physical_servers', 'server',          'fkey',    false,  true, false, 'a reference to servers', '1.36', null);
select "schema".add_column('infrastructure', 'physical_servers', 'rack',            'fkey',     true, false, false, 'the rack that houses this server', '1.36', null);
select "schema".add_column('infrastructure', 'physical_servers', 'rack_units',      'short',    true, false, false, 'the number of rack units', '1.36', null);
select "schema".add_column('infrastructure', 'physical_servers', 'ram',             'int',      true, false, false, 'the total number of megabytes of RAM in this server', '1.36', null);
select "schema".add_column('infrastructure', 'physical_servers', 'processor_type',  'string',   true, false, false, 'the processor type', '1.36', null);
select "schema".add_column('infrastructure', 'physical_servers', 'processor_speed', 'int',      true, false, false, 'the processor speed in MHz', '1.36', null);
select "schema".add_column('infrastructure', 'physical_servers', 'processor_cores', 'int',      true, false, false, 'the total number of processor cores, hyperthreads are counted as different cores', '1.36', null);
select "schema".add_column('infrastructure', 'physical_servers', 'max_power',       'float',    true, false, false, 'the number of amps this server consumes under peak load', '1.36', null);
select "schema".add_column('infrastructure', 'physical_servers', 'supports_hvm',    'boolean',  true, false, false, 'indicates supports full hardware virtualization', '1.37', null);
select "schema".add_column('infrastructure', 'physical_servers', 'ups_type',        'string',  false, false, false, 'the type of UPS powering the server', '1.63', null);
