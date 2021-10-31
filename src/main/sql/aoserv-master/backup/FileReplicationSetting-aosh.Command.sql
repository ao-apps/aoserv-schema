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

select aosh.add_command(
  'add_file_backup_setting',
  'backup',
  'file_backup_settings',
  'creates a new FileBackupSetting',
  '<i>server</i> <i>path</i> <i>package</i> <i>backup_level</i> <i>backup_retention</i> <i>recurse</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'add_file_backup_setting',
  'backup',
  'file_backup_settings',
  'creates a new FileBackupSetting',
  '<i>replication</i> <i>path</i> <i>backup_enabled</i>',
  '1.31',
  '1.61'
);
select aosh.add_command(
  'add_file_backup_setting',
  'backup',
  'file_backup_settings',
  'creates a new FileBackupSetting',
  '<i>replication</i> <i>path</i> <i>backup_enabled</i> <i>required</i>',
  '1.62',
  null
);
select aosh.add_command(
  'remove_file_backup_setting',
  'backup',
  'file_backup_settings',
  'removes a FileBackupSetting',
  '<i>server</i> <i>path</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'remove_file_backup_setting',
  'backup',
  'file_backup_settings',
  'removes a FileBackupSetting',
  '<i>replication</i> <i>path</i>',
  '1.31',
  null
);
select aosh.add_command(
  'set_file_backup_setting',
  'backup',
  'file_backup_settings',
  'sets the values in a FileBackupSetting',
  '<i>server</i> <i>path</i> <i>package</i> <i>backup_level</i> <i>backup_retention</i> <i>recurse</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_file_backup_setting',
  'backup',
  'file_backup_settings',
  'sets the values in a FileBackupSetting',
  '<i>replication</i> <i>path</i> <i>backup_enabled</i>',
  '1.31',
  '1.61'
);
select aosh.add_command(
  'set_file_backup_setting',
  'backup',
  'file_backup_settings',
  'sets the values in a FileBackupSetting',
  '<i>replication</i> <i>path</i> <i>backup_enabled</i> <i>required</i>',
  '1.62',
  null
);
