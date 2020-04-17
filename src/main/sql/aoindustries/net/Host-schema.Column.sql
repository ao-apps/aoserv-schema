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

select "schema".add_column('net', 'servers', 'pkey',                     'pkey',       false,  true, false, 'a generated, unique ID', '1.0a100', null);
select "schema".add_column('net', 'servers', 'hostname',                 'hostname',   false,  true, false, 'the unique hostname of the server', '1.0a100', '1.30');
select "schema".add_column('net', 'servers', 'farm',                     'string',     false, false, false, 'the name of the farm the server is located in', '1.0a100', null);
select "schema".add_column('net', 'servers', 'owner',                    'accounting', false, false, false, 'the business that owns the server', '1.0a100', '1.30');
select "schema".add_column('net', 'servers', 'administrator',            'username',   false, false, false, 'the primary administrator of the server', '1.0a100', '1.30');
select "schema".add_column('net', 'servers', 'description',              'string',     false, false, false, 'a description of the servers purpose', '1.0a100', null);
select "schema".add_column('net', 'servers', 'architecture',             'string',     false, false, false, '', '1.0a100', '1.0a107');
select "schema".add_column('net', 'servers', 'backup_hour',              'int',        false, false, false, 'the hour of the day the backup will occur, in server time zone', '1.0a100', '1.30');
select "schema".add_column('net', 'servers', 'last_backup_time',         'time',        true, false, false, 'the time the last backup was started', '1.0a100', '1.30');
select "schema".add_column('net', 'servers', 'operating_system_version', 'fkey',       false, false, false, 'the version of operating system running on the server', '1.0a100', '1.30');
select "schema".add_column('net', 'servers', 'operating_system_version', 'fkey',        true, false, false, 'the version of operating system running on the server, if known', '1.31', null);
select "schema".add_column('net', 'servers', 'asset_label',              'string',      true, false, false, 'the value contained on any asset label', '1.0a108', '1.30');
select "schema".add_column('net', 'servers', 'minimum_power',            'float',       true, false, false, 'the minimum power consumption in amps', '1.16', '1.30');
select "schema".add_column('net', 'servers', 'maximum_power',            'float',       true, false, false, 'the maximum power consumption in amps', '1.16', '1.30');
select "schema".add_column('net', 'servers', 'package',                  'fkey',       false, false, false, 'the package accountable for resources used by the server', '1.31', null);
select "schema".add_column('net', 'servers', 'name',                     'string',     false, false, false, 'the per-package unique name of the server (no special formatting required)', '1.31', null);
select "schema".add_column('net', 'servers', 'monitoring_enabled',       'boolean',    false, false, false, 'enables/disables monitoring', '1.32', null);
