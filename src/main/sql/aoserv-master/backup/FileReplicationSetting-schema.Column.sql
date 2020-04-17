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

select "schema".add_column('backup', 'file_backup_settings', 'pkey',             'pkey',    false,  true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('backup', 'file_backup_settings', 'server',           'fkey',    false, false, false, 'the pkey of the server configured', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_settings', 'replication',      'fkey',    false, false, false, 'the pkey of the failover_file_replication configured', '1.31', null);
select "schema".add_column('backup', 'file_backup_settings', 'path',             'string',  false, false, false, 'the path to control', '1.0a100', null);
select "schema".add_column('backup', 'file_backup_settings', 'package',          'fkey',    false, false, false, 'the pkey of the package the files belong to', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_settings', 'backup_level',     'short',   false, false, false, 'the number of backup copies to keep', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_settings', 'backup_enabled',   'boolean', false, false, false, 'the enabled flag for this prefix', '1.31', null);
select "schema".add_column('backup', 'file_backup_settings', 'backup_retention', 'short',   false, false, false, 'the number of days to keep the backup data', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_settings', 'recurse',          'boolean', false, false, false, 'indicates that the backup system should recursively scan directories in <code>path</code>', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_settings', 'required',         'boolean', false, false, false, 'indicates that backup pass will not be considered successful if file or path is missing', '1.62', null);
