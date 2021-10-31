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

select "schema".add_column('backup', 'backup_reports', 'pkey',              'pkey', false,  true, false, 'a generated primary key', '1.0a101', null);
select "schema".add_column('backup', 'backup_reports', 'server',            'fkey', false, false, false, 'the pkey of the server being backed-up', '1.0a101', null);
select "schema".add_column('backup', 'backup_reports', 'package',           'fkey', false, false, false, 'the pkey of the package the data is assigned to', '1.0a101', null);
select "schema".add_column('backup', 'backup_reports', 'date',              'date', false, false, false, 'the date the summary is for', '1.0a101', null);
select "schema".add_column('backup', 'backup_reports', 'file_count',        'int',  false, false, false, 'the number of files belong to this package on this server', '1.0a101', null);
select "schema".add_column('backup', 'backup_reports', 'uncompressed_size', 'long', false, false, false, 'the total raw byte count', '1.0a101', '1.30');
select "schema".add_column('backup', 'backup_reports', 'compressed_size',   'long', false, false, false, 'the total number of bytes after compression', '1.0a101', '1.30');
select "schema".add_column('backup', 'backup_reports', 'disk_size',         'long', false, false, false, 'the total number of bytes of disk space used', '1.0a101', null);
