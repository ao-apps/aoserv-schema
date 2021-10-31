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

select "schema".add_column('backup', 'file_backups', 'pkey',             'pkey',       false,  true, false, 'a generated primary key', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backups', 'server',           'fkey',       false, false, false, 'the server that the file resides on', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backups', 'path',             'string',     false, false, false, 'the pkey in file_paths for the path of this file', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backups', 'device',           'short',      false, false, false, 'the device that was storing this file', '1.0a100', '1.0a106');
select "schema".add_column('backup', 'file_backups', 'device',           'short',       true, false, false, 'the device that was storing this file', '1.0a107', '1.30');
select "schema".add_column('backup', 'file_backups', 'inode',            'long',       false, false, false, 'the unique identifier for this object within the device', '1.0a100', '1.0a106');
select "schema".add_column('backup', 'file_backups', 'inode',            'long',        true, false, false, 'the unique identifier for this object within the device', '1.0a107', '1.30');
select "schema".add_column('backup', 'file_backups', 'package',          'fkey',       false, false, false, 'the number of the package that owns the file', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backups', 'mode',             'octal_long', false, false, false, 'the permissions and type of the file', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backups', 'uid',              'int',        false, false, false, 'the file owner', '1.0a100', '1.0a106');
select "schema".add_column('backup', 'file_backups', 'uid',              'int',         true, false, false, 'the file owner', '1.0a107', '1.30');
select "schema".add_column('backup', 'file_backups', 'gid',              'int',        false, false, false, 'the file group', '1.0a100', '1.0a106');
select "schema".add_column('backup', 'file_backups', 'gid',              'int',         true, false, false, 'the file group', '1.0a107', '1.30');
select "schema".add_column('backup', 'file_backups', 'backup_data',      'fkey',        true, false, false, 'the data content for the file', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backups', 'create_time',      'time',       false, false, false, 'the time the file backup entry was created', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backups', 'modify_time',      'time',        true, false, false, 'the modification time of the file the last time it was verified', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backups', 'remove_time',      'time',        true, false, false, 'the time the file backup entry was no longer valid', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backups', 'backup_level',     'short',      false, false, false, 'the number of times to store this backup', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backups', 'backup_retention', 'short',      false, false, false, 'the number of days the backups will be kept', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backups', 'symlink_target',   'string',      true, false, false, 'the target of a symbolic link', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backups', 'device_id',        'long',        true, false, false, 'the ID for device files', '1.0a100', '1.30');
