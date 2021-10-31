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

select "schema".add_foreign_key('infrastructure', 'virtual_servers', 'server',                           'net',            'servers',          'pkey',   '1.36', null);
select "schema".add_foreign_key('infrastructure', 'virtual_servers', 'minimum_processor_type',           'infrastructure', 'processor_types',  'type',   '1.41', null);
select "schema".add_foreign_key('infrastructure', 'virtual_servers', 'primary_minimum_processor_type',   'infrastructure', 'processor_types',  'type',   '1.36', '1.40');
select "schema".add_foreign_key('infrastructure', 'virtual_servers', 'secondary_minimum_processor_type', 'infrastructure', 'processor_types',  'type',   '1.36', '1.40');
select "schema".add_foreign_key('infrastructure', 'virtual_servers', 'minimum_processor_architecture',   'distribution',   'architectures',    'name',   '1.36', null);
select "schema".add_foreign_key('infrastructure', 'virtual_servers', 'primary_physical_server',          'infrastructure', 'physical_servers', 'server', '1.36', '1.40');
select "schema".add_foreign_key('infrastructure', 'virtual_servers', 'secondary_physical_server',        'infrastructure', 'physical_servers', 'server', '1.36', '1.40');
