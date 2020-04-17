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

select "schema".add_column('email', 'linux_acc_addresses', 'pkey',                 'pkey',     false,  true, false, 'a unique, generated primary key', '1.0a100', null);
select "schema".add_column('email', 'linux_acc_addresses', 'email_address',        'fkey',     false, false, false, 'reference to pkey of email_addresses', '1.0a100', null);
select "schema".add_column('email', 'linux_acc_addresses', 'linux_account',        'username', false, false, false, 'reference to username of linux_accounts', '1.0a100', '1.30');
select "schema".add_column('email', 'linux_acc_addresses', 'linux_server_account', 'fkey',     false, false, false, 'reference to linux_server_accounts', '1.31', null);
