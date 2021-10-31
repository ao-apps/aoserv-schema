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

select "schema".add_column('mysql', 'mysql_servers', 'pkey',            'pkey',              false,  true, false, 'a unique, generated primary key', '1.4', '1.81.17');
select "schema".add_column('mysql', 'mysql_servers', 'bind',            'fkey',              false,  true, false, 'the port the server binds to', '1.81.18', null);
select "schema".add_column('mysql', 'mysql_servers', 'name',            'string',            false, false, false, 'the name of the server', '1.4', '1.80');
select "schema".add_column('mysql', 'mysql_servers', 'name',            'mysql_server_name', false, false, false, 'the name of the server', '1.80.0', null);
select "schema".add_column('mysql', 'mysql_servers', 'ao_server',       'fkey',              false, false, false, 'the pkey of the server that this database is hosted on', '1.4', null);
select "schema".add_column('mysql', 'mysql_servers', 'version',         'fkey',              false, false, false, 'the pkey of the MySQL version', '1.4', null);
select "schema".add_column('mysql', 'mysql_servers', 'max_connections', 'int',               false, false, false, 'the maximum number of connections for the db', '1.4', null);
select "schema".add_column('mysql', 'mysql_servers', 'net_bind',        'fkey',              false,  true, false, 'the port the server binds to', '1.4', '1.81.17');
select "schema".add_column('mysql', 'mysql_servers', 'package',         'string',            false, false, false, 'the package who owns the instance', '1.28', '1.80');
select "schema".add_column('mysql', 'mysql_servers', 'package',         'accounting',        false, false, false, 'the package who owns the instance', '1.80.0', '1.81.17');
