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

select "schema".add_column('interbase', 'interbase_server_users', 'pkey',                'pkey',     false,  true, false, 'a generated primary key', '1.0a100', '1.30');
select "schema".add_column('interbase', 'interbase_server_users', 'username',            'username', false, false, false, 'the username of the interbase_user', '1.0a100', '1.30');
select "schema".add_column('interbase', 'interbase_server_users', 'ao_server',           'fkey',     false, false, false, 'the pkey of the server', '1.0a100', '1.30');
select "schema".add_column('interbase', 'interbase_server_users', 'disable_log',         'fkey',      true, false, false, 'indicates that this account is disable', '1.0a100', '1.30');
select "schema".add_column('interbase', 'interbase_server_users', 'predisable_password', 'string',    true, false, false, 'the password used before the account was disabled', '1.0a115', '1.30');
