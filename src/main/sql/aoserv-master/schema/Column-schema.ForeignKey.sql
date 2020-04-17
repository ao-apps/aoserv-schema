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

select "schema".add_foreign_key('schema', 'schema_columns', 'table_name',    'schema', 'schema_tables',    'name',    '1.0a100', '1.81.17');
select "schema".add_foreign_key('schema', 'schema_columns', 'table',         'schema', 'schema_tables',    'name',    '1.81.18', null);
select "schema".add_foreign_key('schema', 'schema_columns', 'sinceVersion',  'schema', 'aoserv_protocols', 'version', '1.81.18', null);
select "schema".add_foreign_key('schema', 'schema_columns', 'lastVersion',   'schema', 'aoserv_protocols', 'version', '1.81.18', null);
select "schema".add_foreign_key('schema', 'schema_columns', 'type',          'schema', 'schema_types',     'type',    '1.0a100', '1.81.17');
select "schema".add_foreign_key('schema', 'schema_columns', 'type',          'schema', 'schema_types',     'name',    '1.81.18', null);
select "schema".add_foreign_key('schema', 'schema_columns', 'since_version', 'schema', 'aoserv_protocols', 'version', '1.0a101', '1.81.17');
select "schema".add_foreign_key('schema', 'schema_columns', 'last_version',  'schema', 'aoserv_protocols', 'version', '1.0a104', '1.81.17');
