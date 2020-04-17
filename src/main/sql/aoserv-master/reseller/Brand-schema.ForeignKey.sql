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

select "schema".add_foreign_key('reseller', 'brands', 'accounting',                  'account', 'businesses',            'accounting', '1.44',    null);
select "schema".add_foreign_key('reseller', 'brands', 'smtp_linux_server_account',   'linux',   'linux_server_accounts', 'pkey',       '1.44',    null);
select "schema".add_foreign_key('reseller', 'brands', 'imap_linux_server_account',   'linux',   'linux_server_accounts', 'pkey',       '1.44',    null);
select "schema".add_foreign_key('reseller', 'brands', 'support_email_address',       'email',   'email_addresses',       'pkey',       '1.44',    null);
select "schema".add_foreign_key('reseller', 'brands', 'signup_email_address',        'email',   'email_addresses',       'pkey',       '1.44',    null);
select "schema".add_foreign_key('reseller', 'brands', 'ticket_encryption_from',      'pki',     'encryption_keys',       'pkey',       '1.44',    null);
select "schema".add_foreign_key('reseller', 'brands', 'ticket_encryption_recipient', 'pki',     'encryption_keys',       'pkey',       '1.44',    null);
select "schema".add_foreign_key('reseller', 'brands', 'signup_encryption_from',      'pki',     'encryption_keys',       'pkey',       '1.44',    null);
select "schema".add_foreign_key('reseller', 'brands', 'signup_encryption_recipient', 'pki',     'encryption_keys',       'pkey',       '1.44',    null);
select "schema".add_foreign_key('reseller', 'brands', 'aoweb_struts_vnc_bind',       'net',     'net_binds',             'pkey',       '1.52',    '1.81.17');
select "schema".add_foreign_key('reseller', 'brands', 'aoweb_struts_vnc_bind',       'net',     'net_binds',             'id',         '1.81.18', null);
