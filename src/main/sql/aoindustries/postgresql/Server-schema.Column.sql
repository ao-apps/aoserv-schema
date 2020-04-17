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

select "schema".add_column('postgresql', 'postgres_servers', 'pkey',                   'pkey',                 false,  true, false, 'a unique, generated primary key', '1.0a100', '1.81.17');
select "schema".add_column('postgresql', 'postgres_servers', 'bind',                   'fkey',                 false,  true, false, 'the port the server binds to', '1.81.18', null);
select "schema".add_column('postgresql', 'postgres_servers', 'name',                   'string',               false, false, false, 'the name of the database', '1.0a100', '1.80');
select "schema".add_column('postgresql', 'postgres_servers', 'name',                   'postgres_server_name', false, false, false, 'the name of the database', '1.80.0', null);
select "schema".add_column('postgresql', 'postgres_servers', 'ao_server',              'fkey',                 false, false, false, 'the pkey of the server that this database is hosted on', '1.0a100', null);
select "schema".add_column('postgresql', 'postgres_servers', 'version',                'fkey',                 false, false, false, 'the pkey of the PostgreSQL version', '1.0a100', null);
select "schema".add_column('postgresql', 'postgres_servers', 'max_connections',        'int',                  false, false, false, 'the maximum number of connections for the db', '1.0a100', null);
select "schema".add_column('postgresql', 'postgres_servers', 'net_bind',               'fkey',                 false,  true, false, 'the port the server binds to', '1.0a100', '1.81.17');
select "schema".add_column('postgresql', 'postgres_servers', 'sort_mem',               'int',                  false, false, false, 'the amount of shared memory used for sorting', '1.0a100', null);
select "schema".add_column('postgresql', 'postgres_servers', 'shared_buffers',         'int',                  false, false, false, 'the number of shared buffers', '1.0a100', null);
select "schema".add_column('postgresql', 'postgres_servers', 'fsync',                  'boolean',              false, false, false, 'indicates that writes are synchronous', '1.0a100', null);
select "schema".add_column('postgresql', 'postgres_servers', 'last_postgres_usesysid', 'fkey',                 false, false, false, 'the last usesysid assigned on the server', '1.0a100', '1.0a130');
