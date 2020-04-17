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

select "schema".add_column('infrastructure', 'virtual_servers', 'server',                            'fkey',    false,  true, false, 'the server that is virtualized', '1.36', null);
select "schema".add_column('infrastructure', 'virtual_servers', 'primary_ram',                       'int',     false, false, false, 'the amount of RAM required in primary mode in megabytes', '1.36', null);
select "schema".add_column('infrastructure', 'virtual_servers', 'primary_ram_target',                'int',     false, false, false, 'the amount of RAM required in primary mode in megabytes', '1.43', null);
select "schema".add_column('infrastructure', 'virtual_servers', 'secondary_ram',                     'int',      true, false, false, 'the amount of RAM required in primary mode in megabytes or 0 if secondary not required', '1.36', null);
select "schema".add_column('infrastructure', 'virtual_servers', 'secondary_ram_target',              'int',      true, false, false, 'the amount of RAM required in primary mode in megabytes or 0 if secondary not required', '1.43', null);
select "schema".add_column('infrastructure', 'virtual_servers', 'minimum_processor_type',            'string',   true, false, false, 'the minimum processor type', '1.41', null);
select "schema".add_column('infrastructure', 'virtual_servers', 'primary_minimum_processor_type',    'string',   true, false, false, 'the minimum processor type in primary mode', '1.36', '1.40');
select "schema".add_column('infrastructure', 'virtual_servers', 'secondary_minimum_processor_type',  'string',   true, false, false, 'the minimum processor type in secondary mode', '1.36', '1.40');
select "schema".add_column('infrastructure', 'virtual_servers', 'minimum_processor_architecture',    'string',  false, false, false, 'the minimum processor architecture, compatible architectures may be substituted', '1.36', null);
select "schema".add_column('infrastructure', 'virtual_servers', 'minimum_processor_speed',           'int',      true, false, false, 'the minimum processor speed in MHz', '1.41', null);
select "schema".add_column('infrastructure', 'virtual_servers', 'minimum_processor_speed_target',    'int',      true, false, false, 'the minimum processor speed in MHz', '1.43', null);
select "schema".add_column('infrastructure', 'virtual_servers', 'primary_minimum_processor_speed',   'int',      true, false, false, 'the minimum processor speed in MHz for primary mode', '1.36', '1.40');
select "schema".add_column('infrastructure', 'virtual_servers', 'secondary_minimum_processor_speed', 'int',      true, false, false, 'the minimum processor speed in MHz for secondary mode', '1.36', '1.40');
select "schema".add_column('infrastructure', 'virtual_servers', 'processor_cores',                   'short',   false, false, false, 'the number of processor cores', '1.41', null);
select "schema".add_column('infrastructure', 'virtual_servers', 'processor_cores_target',            'short',   false, false, false, 'the number of processor cores', '1.43', null);
select "schema".add_column('infrastructure', 'virtual_servers', 'primary_processor_cores',           'short',   false, false, false, 'the number of processor cores used in primary mode', '1.36', '1.40');
select "schema".add_column('infrastructure', 'virtual_servers', 'secondary_processor_cores',         'short',    true, false, false, 'the number of processor cores used in secondary mode', '1.36', '1.40');
select "schema".add_column('infrastructure', 'virtual_servers', 'processor_weight',                  'short',   false, false, false, 'the processor allocation weight on a scale of 1-1024', '1.41', null);
select "schema".add_column('infrastructure', 'virtual_servers', 'processor_weight_target',           'short',   false, false, false, 'the processor allocation weight on a scale of 1-1024', '1.43', null);
select "schema".add_column('infrastructure', 'virtual_servers', 'primary_processor_weight',          'short',   false, false, false, 'the processor allocation weight in primary mode on a scale of 1-1024', '1.36', '1.40');
select "schema".add_column('infrastructure', 'virtual_servers', 'secondary_processor_weight',        'short',    true, false, false, 'the processor allocation weight in secondary mode on a scale of 1-1024', '1.36', '1.40');
select "schema".add_column('infrastructure', 'virtual_servers', 'primary_physical_server',           'fkey',    false, false, false, 'the physical server that provides the primary mode resources', '1.36', '1.40');
select "schema".add_column('infrastructure', 'virtual_servers', 'primary_physical_server_locked',    'boolean', false, false, false, 'indicates the primary server is locked and should not be moved by automated means', '1.36', null);
select "schema".add_column('infrastructure', 'virtual_servers', 'secondary_physical_server',         'fkey',    false, false, false, 'the physical server that provides the secondary mode resources', '1.36', '1.40');
select "schema".add_column('infrastructure', 'virtual_servers', 'secondary_physical_server_locked',  'boolean', false, false, false, 'indicates the secondary server is locked and should not be moved by automated means', '1.36', null);
select "schema".add_column('infrastructure', 'virtual_servers', 'requires_hvm',                      'boolean', false, false, false, 'indicates requires full hardware virtualization', '1.37', null);
select "schema".add_column('infrastructure', 'virtual_servers', 'vnc_password',                      'string',  false,  true, false, 'the password for VNC console access or null to disable VNC access', '1.51', null);
