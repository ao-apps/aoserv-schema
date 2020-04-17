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

select "schema".add_column('schema', 'schema_tables', 'id',               'pkey',    false,  true, true, 'a unique ID for the table', '1.81.18', null);
select "schema".add_column('schema', 'schema_tables', 'name',             'string',  false,  true, true, 'the unique name', '1.0a100', null);
select "schema".add_column('schema', 'schema_tables', 'table_id',         'pkey',    false,  true, true, 'a unique ID for the table', '1.0a100', '1.81.17');
select "schema".add_column('schema', 'schema_tables', 'sinceVersion',     'string',  false, false, true, 'the first aoserv_protocol version to have this table', '1.81.18', null);
select "schema".add_column('schema', 'schema_tables', 'lastVersion',      'string',   true, false, true, 'the last aoserv_protocol version to have this table or null if still used', '1.81.18', null);
select "schema".add_column('schema', 'schema_tables', 'display',          'string',  false, false, true, 'the display name', '1.0a100', null);
select "schema".add_column('schema', 'schema_tables', 'is_public',        'boolean', false, false, true, 'if the data contained in the table is accessible to everybody', '1.0a100', '1.81.17');
select "schema".add_column('schema', 'schema_tables', 'isPublic',         'boolean', false, false, true, 'if the data contained in the table is accessible to everybody', '1.81.18', null);
select "schema".add_column('schema', 'schema_tables', 'description',      'string',  false, false, true, 'the description of the table', '1.0a100', null);
select "schema".add_column('schema', 'schema_tables', 'dataverse_editor', 'string',   true, false, true, 'the full Java package.Class name of the editor', '1.0a100', '1.30');
select "schema".add_column('schema', 'schema_tables', 'since_version',    'string',  false, false, true, 'the first aoserv_protocol version to have this table', '1.0a101', '1.81.17');
select "schema".add_column('schema', 'schema_tables', 'last_version',     'string',   true, false, true, 'the last aoserv_protocol version to have this table or null if still used', '1.0a104', '1.81.17');
select "schema".add_column('schema', 'schema_tables', 'default_order_by', 'string',   true, false, true, 'the default order by clause for client-side sorting', '1.4', '1.30');
