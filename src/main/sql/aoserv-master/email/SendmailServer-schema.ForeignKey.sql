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

select "schema".add_foreign_key('email', 'sendmail_servers', 'ao_server',          'linux',   'ao_servers',       'server', '1.81.10', null);
select "schema".add_foreign_key('email', 'sendmail_servers', 'package',            'billing', 'packages',         'pkey',   '1.81.10', null);
select "schema".add_foreign_key('email', 'sendmail_servers', 'server_certificate', 'pki',     'ssl_certificates', 'pkey',   '1.81.10', null);
select "schema".add_foreign_key('email', 'sendmail_servers', 'client_certificate', 'pki',     'ssl_certificates', 'pkey',   '1.81.10', null);
select "schema".add_foreign_key('email', 'sendmail_servers', 'client_addr_inet',   'net',     'ip_addresses',     'pkey',   '1.81.10', '1.81.17');
select "schema".add_foreign_key('email', 'sendmail_servers', 'clientAddrInet',     'net',     'ip_addresses',     'id',     '1.81.18', null);
select "schema".add_foreign_key('email', 'sendmail_servers', 'client_addr_inet6',  'net',     'ip_addresses',     'pkey',   '1.81.10', '1.81.17');
select "schema".add_foreign_key('email', 'sendmail_servers', 'clientAddrInet6',    'net',     'ip_addresses',     'id',     '1.81.18', null);
