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

select "schema".add_column('distribution.management', 'distro_files', 'pkey',                     'pkey',             false,  true, false, 'the unique pkey', '1.0a108', null);
select "schema".add_column('distribution.management', 'distro_files', 'operating_system_version', 'fkey',             false, false, false, 'the OS version that contains the file', '1.0a108', null);
select "schema".add_column('distribution.management', 'distro_files', 'path',                     'path',             false,  true, false, 'the full path to the file', '1.0a100', '1.0a107');
select "schema".add_column('distribution.management', 'distro_files', 'path',                     'path',             false, false, false, 'the full path to the file', '1.0a108', null);
select "schema".add_column('distribution.management', 'distro_files', 'optional',                 'boolean',          false, false, false, 'if the file is optional', '1.0a100', null);
select "schema".add_column('distribution.management', 'distro_files', 'type',                     'string',           false, false, false, 'the type of file', '1.0a100', null);
select "schema".add_column('distribution.management', 'distro_files', 'mode',                     'octal_long',       false, false, false, 'the mode (including file type bits)', '1.0a100', null);
select "schema".add_column('distribution.management', 'distro_files', 'linux_account',            'username',         false, false, false, 'the owner of the file', '1.0a100', '1.81.21');
select "schema".add_column('distribution.management', 'distro_files', 'linux_account',            'linux_username',   false, false, false, 'the owner of the file', '1.81.22', null);
select "schema".add_column('distribution.management', 'distro_files', 'linux_group',              'string',           false, false, false, 'the group of the file', '1.0a100', '1.80');
select "schema".add_column('distribution.management', 'distro_files', 'linux_group',              'group_id',         false, false, false, 'the group of the file', '1.80.0', null);
select "schema".add_column('distribution.management', 'distro_files', 'size',                     'long',              true, false, false, 'the length of the file', '1.0a100', null);
select "schema".add_column('distribution.management', 'distro_files', 'file_md5',                 'string',            true, false, false, 'the md5 hash if is a regular file', '1.0a100', '1.0a104');
select "schema".add_column('distribution.management', 'distro_files', 'file_md5_hi',              'long',              true, false, false, 'the md5 hash if is a regular file', '1.0a105', '1.79');
select "schema".add_column('distribution.management', 'distro_files', 'file_md5_lo',              'long',              true, false, false, 'the md5 hash if is a regular file', '1.0a105', '1.79');
select "schema".add_column('distribution.management', 'distro_files', 'file_sha256_0',            'long',              true, false, false, 'the first 64 bits of SHA-256 hash if is a regular file', '1.80', null);
select "schema".add_column('distribution.management', 'distro_files', 'file_sha256_1',            'long',              true, false, false, 'the second 64 bits of SHA-256 hash if is a regular file', '1.80', null);
select "schema".add_column('distribution.management', 'distro_files', 'file_sha256_2',            'long',              true, false, false, 'the third 64 bits of SHA-256 hash if is a regular file', '1.80', null);
select "schema".add_column('distribution.management', 'distro_files', 'file_sha256_3',            'long',              true, false, false, 'the fourth 64 bits of SHA-256 hash if is a regular file', '1.80', null);
select "schema".add_column('distribution.management', 'distro_files', 'symlink_target',           'string',            true, false, false, 'the target if is a symbolic link', '1.0a100', null);
