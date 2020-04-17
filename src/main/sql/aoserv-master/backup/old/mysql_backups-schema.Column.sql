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

select "schema".add_column('backup', 'mysql_backups', 'pkey',             'pkey',   false,  true, false, 'a unique, generated primary key', '1.0a100', '1.30');
select "schema".add_column('backup', 'mysql_backups', 'package',          'fkey',   false, false, false, 'the pkey of package that owns this backup', '1.0a100', '1.30');
select "schema".add_column('backup', 'mysql_backups', 'db_name',          'string', false, false, false, 'the name of the database', '1.0a100', '1.30');
select "schema".add_column('backup', 'mysql_backups', 'ao_server',        'fkey',   false, false, false, 'the pkey of the server that this database was backed-up from', '1.0a100', '1.3');
select "schema".add_column('backup', 'mysql_backups', 'mysql_server',     'fkey',   false, false, false, 'the pkey of the MySQL server that this database was backed-up from', '1.4', '1.30');
select "schema".add_column('backup', 'mysql_backups', 'start_time',       'time',   false, false, false, 'the time the backup was started', '1.0a100', '1.30');
select "schema".add_column('backup', 'mysql_backups', 'end_time',         'time',   false, false, false, 'the time the backup was completed', '1.0a100', '1.30');
select "schema".add_column('backup', 'mysql_backups', 'backup_data',      'fkey',   false, false, false, 'the data store for this backup', '1.0a100', '1.30');
select "schema".add_column('backup', 'mysql_backups', 'backup_level',     'short',  false, false, false, 'the number of backup copies to keep', '1.0a100', '1.30');
select "schema".add_column('backup', 'mysql_backups', 'backup_retention', 'short',  false, false, false, 'the number of days to keep the backup data', '1.0a100', '1.30');
