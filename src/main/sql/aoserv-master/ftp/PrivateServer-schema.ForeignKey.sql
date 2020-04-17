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

select "schema".add_foreign_key('ftp', 'private_ftp_servers', 'ip_address',           'net',   'ip_addresses',          'pkey', '1.0a100', '1.0a112');
select "schema".add_foreign_key('ftp', 'private_ftp_servers', 'net_bind',             'net',   'net_binds',             'pkey', '1.0a113', '1.81.17');
select "schema".add_foreign_key('ftp', 'private_ftp_servers', 'net_bind',             'net',   'net_binds',             'id',   '1.81.18', null);
select "schema".add_foreign_key('ftp', 'private_ftp_servers', 'linux_server_account', 'linux', 'linux_server_accounts', 'pkey', '1.0a100', '1.68');
select "schema".add_foreign_key('ftp', 'private_ftp_servers', 'linux_server_account', 'linux', 'linux_server_accounts', 'pkey', '1.69',    null);
select "schema".add_foreign_key('ftp', 'private_ftp_servers', 'linux_server_group',   'linux', 'linux_server_groups',   'pkey', '1.0a100', '1.38');
