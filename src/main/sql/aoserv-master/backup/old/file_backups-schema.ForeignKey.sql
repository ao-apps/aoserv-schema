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

select "schema".add_foreign_key('backup', 'file_backups', 'server',           'net',     'servers',             'pkey',  '1.0a100', '1.30');
select "schema".add_foreign_key('backup', 'file_backups', 'device',           'backup',  'file_backup_devices', 'pkey',  '1.0a100', '1.0a106');
select "schema".add_foreign_key('backup', 'file_backups', 'device',           'backup',  'file_backup_devices', 'pkey',  '1.0a107', '1.30');
select "schema".add_foreign_key('backup', 'file_backups', 'package',          'billing', 'packages',            'pkey',  '1.0a100', '1.30');
select "schema".add_foreign_key('backup', 'file_backups', 'uid',              'linux',   'linux_ids',           'id',    '1.0a100', '1.0a106');
select "schema".add_foreign_key('backup', 'file_backups', 'uid',              'linux',   'linux_ids',           'id',    '1.0a107', '1.30');
select "schema".add_foreign_key('backup', 'file_backups', 'gid',              'linux',   'linux_ids',           'id',    '1.0a100', '1.0a106');
select "schema".add_foreign_key('backup', 'file_backups', 'gid',              'linux',   'linux_ids',           'id',    '1.0a107', '1.30');
select "schema".add_foreign_key('backup', 'file_backups', 'backup_data',      'backup',  'backup_data',         'pkey',  '1.0a100', '1.30');
select "schema".add_foreign_key('backup', 'file_backups', 'backup_level',     'backup',  'backup_levels',       'level', '1.0a100', '1.30');
select "schema".add_foreign_key('backup', 'file_backups', 'backup_retention', 'backup',  'backup_retentions',   'days',  '1.0a100', '1.30');
