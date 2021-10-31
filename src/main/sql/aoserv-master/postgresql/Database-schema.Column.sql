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

select "schema".add_column('postgresql', 'postgres_databases', 'pkey',             'pkey',                   false,  true, false, 'a unique, generated primary key', '1.0a100', null);
select "schema".add_column('postgresql', 'postgres_databases', 'name',             'string',                 false, false, false, 'the name of the database', '1.0a100', '1.80');
select "schema".add_column('postgresql', 'postgres_databases', 'name',             'postgres_database_name', false, false, false, 'the name of the database', '1.80.0', null);
select "schema".add_column('postgresql', 'postgres_databases', 'postgres_server',  'fkey',                   false, false, false, 'the pkey of the PostgreSQL server', '1.0a100', null);
select "schema".add_column('postgresql', 'postgres_databases', 'datdba',           'fkey',                   false, false, false, 'the datdba for the database', '1.0a100', null);
select "schema".add_column('postgresql', 'postgres_databases', 'encoding',         'fkey',                   false, false, false, 'the pkey of the encoding system used for the database', '1.0a100', null);
select "schema".add_column('postgresql', 'postgres_databases', 'is_template',      'boolean',                false, false, false, 'if true, this database is a template', '1.0a100', null);
select "schema".add_column('postgresql', 'postgres_databases', 'allow_conn',       'boolean',                false, false, false, 'if true, this database is accepting connections', '1.0a100', null);
select "schema".add_column('postgresql', 'postgres_databases', 'backup_level',     'short',                  false, false, false, 'the number of backup copies to keep', '1.0a100', '1.30');
select "schema".add_column('postgresql', 'postgres_databases', 'backup_retention', 'short',                  false, false, false, 'the number of days backups will be kept', '1.0a100', '1.30');
select "schema".add_column('postgresql', 'postgres_databases', 'enable_postgis',   'boolean',                false, false, false, 'indicates PostGIS is enabled on this database', '1.27', null);
