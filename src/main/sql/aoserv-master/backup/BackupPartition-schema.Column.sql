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

select "schema".add_column('backup', 'backup_partitions', 'pkey',               'pkey',    false,  true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('backup', 'backup_partitions', 'ao_server',          'fkey',    false, false, false, 'the pkey of the server that stores the backup data', '1.0a100', null);
select "schema".add_column('backup', 'backup_partitions', 'device',             'string',  false, false, false, 'the full path to the device file (compared to the df command)', '1.0a100', '1.30');
select "schema".add_column('backup', 'backup_partitions', 'path',               'path',    false, false, false, 'the full path to the root of the backup data', '1.0a100', null);
select "schema".add_column('backup', 'backup_partitions', 'minimum_free_space', 'long',    false, false, false, 'the minimum free space in bytes', '1.0a100', '1.30');
select "schema".add_column('backup', 'backup_partitions', 'desired_free_space', 'long',    false, false, false, 'when the minimum free space has been reached, data is moved off of the partition until the desired space is available', '1.0a100', '1.30');
select "schema".add_column('backup', 'backup_partitions', 'enabled',            'boolean', false, false, false, 'flags the partition as currently accepting new data', '1.0a100', null);
select "schema".add_column('backup', 'backup_partitions', 'fill_order',         'int',     false, false, false, 'partitions with lower fill_orders are filled first', '1.0a117', '1.30');
