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

select "schema".add_column('backup', 'file_backup_stats', 'pkey',                              'pkey',    false,  true, false, 'a generated primary key', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_stats', 'server',                            'fkey',    false, false, false, 'the pkey of the server that the file resides on', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_stats', 'start_time',                        'time',    false, false, false, 'the time the backup started', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_stats', 'end_time',                          'time',    false, false, false, 'the time the backup ended', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_stats', 'scanned',                           'int',     false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_stats', 'file_backup_attribute_matches',     'int',     false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_stats', 'not_matched_md5_files',             'int',     false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_stats', 'not_matched_md5_failures',          'int',     false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_stats', 'send_missing_backup_data_files',    'int',     false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_stats', 'send_missing_backup_data_failures', 'int',     false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_stats', 'delete_unused_backup_data1',        'int',     false, false, false, '', '1.0a100', '1.0a108');
select "schema".add_column('backup', 'file_backup_stats', 'temp_files',                        'int',     false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_stats', 'temp_send_backup_data_files',       'int',     false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_stats', 'temp_failures',                     'int',     false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_stats', 'delete_unused_backup_data2',        'int',     false, false, false, '', '1.0a100', '1.0a108');
select "schema".add_column('backup', 'file_backup_stats', 'added',                             'int',     false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_stats', 'deleted',                           'int',     false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_stats', 'is_successful',                     'boolean', false, false, false, '', '1.0a100', '1.30');
