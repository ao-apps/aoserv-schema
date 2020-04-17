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

select "schema".add_column('backup', 'backup_data', 'pkey',             'pkey',    false,  true, false, 'a generated primary key', '1.0a100', '1.30');
select "schema".add_column('backup', 'backup_data', 'created',          'time',    false, false, false, 'the time the dataset was created', '1.0a100', '1.30');
select "schema".add_column('backup', 'backup_data', 'backup_partition', 'fkey',    false, false, false, 'the backup partition that stores the content', '1.0a100', '1.30');
select "schema".add_column('backup', 'backup_data', 'data_size',        'long',    false, false, false, 'the uncompressed size of this data', '1.0a100', '1.30');
select "schema".add_column('backup', 'backup_data', 'compressed_size',  'long',     true, false, false, 'the compressed size of this data', '1.0a100', '1.30');
select "schema".add_column('backup', 'backup_data', 'md5_hi',           'long',    false, false, false, 'the 8 high-order bytes of the uncompressed data', '1.0a100', '1.30');
select "schema".add_column('backup', 'backup_data', 'md5_lo',           'long',    false, false, false, 'the 8 low-order bytes of the uncompressed data', '1.0a100', '1.30');
select "schema".add_column('backup', 'backup_data', 'is_stored',        'boolean', false, false, false, 'indicates that the data is available on the backup_partition', '1.0a100', '1.30');
