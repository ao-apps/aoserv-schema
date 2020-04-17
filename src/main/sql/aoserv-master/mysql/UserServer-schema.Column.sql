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

select "schema".add_column('mysql', 'mysql_server_users', 'pkey',                 'pkey',           false,  true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('mysql', 'mysql_server_users', 'username',             'username',       false, false, false, 'the username', '1.0a100', '1.80');
select "schema".add_column('mysql', 'mysql_server_users', 'username',             'mysql_username', false, false, false, 'the username', '1.80.0', null);
select "schema".add_column('mysql', 'mysql_server_users', 'ao_server',            'fkey',           false, false, false, 'the pkey of the MySQL server', '1.0a100', '1.3');
select "schema".add_column('mysql', 'mysql_server_users', 'mysql_server',         'fkey',           false, false, false, 'the pkey of the MySQL server', '1.4', null);
select "schema".add_column('mysql', 'mysql_server_users', 'host',                 'ip_address',     false, false, false, E'the host this user is allowed to connect from,\nif this is not null, all access is restricted to these\nhosts, otherwise the entries in mysql_db_users and\nmysql_hosts are used.', '1.0a100', '1.68');
select "schema".add_column('mysql', 'mysql_server_users', 'host',                 'string',         false, false, false, E'the host this user is allowed to connect from,\nif this is not null, all access is restricted to these\nhosts, otherwise the entries in mysql_db_users and\nmysql_hosts are used.', '1.69', null);
select "schema".add_column('mysql', 'mysql_server_users', 'disable_log',          'fkey',            true, false, false, 'indicates that this account is disabled', '1.0a100', null);
select "schema".add_column('mysql', 'mysql_server_users', 'predisable_password',  'string',          true, false, false, 'the password used before the account was disabled', '1.0a100', null);
select "schema".add_column('mysql', 'mysql_server_users', 'max_questions',        'int',            false, false, false, 'the maximum number of questions to this database server, 0 means unlimited', '1.4', null);
select "schema".add_column('mysql', 'mysql_server_users', 'max_updates',          'int',            false, false, false, 'the maximum number of updates to this database server, 0 means unlimited', '1.4', null);
select "schema".add_column('mysql', 'mysql_server_users', 'max_connections',      'int',            false, false, false, 'the maximum number of connections to this database server, 0 means unlimited', '1.0a111', null);
select "schema".add_column('mysql', 'mysql_server_users', 'max_user_connections', 'int',            false, false, false, 'the maximum number of user connections to this database server, 0 means unlimited', '1.4', null);
