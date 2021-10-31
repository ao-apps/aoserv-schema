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

select "schema".add_column('ftp', 'private_ftp_servers', 'ip_address',           'fkey',        false,  true, false, 'the pkey of the net_bind that the FTP server is on', '1.0a100', '1.0a112');
select "schema".add_column('ftp', 'private_ftp_servers', 'net_bind',             'fkey',        false,  true, false, 'the root directory', '1.0a113', null);
select "schema".add_column('ftp', 'private_ftp_servers', 'root',                 'path',        false, false, false, 'the file transfers are logged to', '1.0a100', '1.38');
select "schema".add_column('ftp', 'private_ftp_servers', 'logfile',              'path',        false, false, false, 'the file transfers are logged to', '1.0a100', null);
select "schema".add_column('ftp', 'private_ftp_servers', 'hostname',             'hostname',    false, false, false, 'the hostname the server reports', '1.0a100', '1.68');
select "schema".add_column('ftp', 'private_ftp_servers', 'hostname',             'domain_name', false, false, false, 'the hostname the server reports', '1.69', null);
select "schema".add_column('ftp', 'private_ftp_servers', 'email',                'email',       false, false, false, 'the email address the server reports', '1.0a100', null);
select "schema".add_column('ftp', 'private_ftp_servers', 'price',                'decimal_2',    true, false, false, '', '1.0a100', '1.0a122');
select "schema".add_column('ftp', 'private_ftp_servers', 'created',              'time',        false, false, false, 'the time the server was added', '1.0a100', null);
select "schema".add_column('ftp', 'private_ftp_servers', 'linux_server_account', 'int',         false, false, false, '', '1.0a100', '1.68');
select "schema".add_column('ftp', 'private_ftp_servers', 'linux_server_account', 'fkey',        false, false, false, '', '1.69', null);
select "schema".add_column('ftp', 'private_ftp_servers', 'linux_server_group',   'int',         false, false, false, '', '1.0a100', '1.38');
select "schema".add_column('ftp', 'private_ftp_servers', 'allow_anonymous',      'boolean',     false, false, false, 'enabled or disabled anonymous access to the server', '1.0a113', null);
