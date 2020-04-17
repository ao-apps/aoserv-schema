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

select "schema".add_column('schema', 'schema_columns', 'pkey',          'pkey',    false,  true, true, 'a generated unique pkey', '1.0a100', '1.81.17');
select "schema".add_column('schema', 'schema_columns', 'id',            'pkey',    false,  true, true, 'a generated unique pkey', '1.81.18', null);
select "schema".add_column('schema', 'schema_columns', 'table_name',    'string',  false, false, true, 'the name of the table the column is in', '1.0a100', '1.81.17');
select "schema".add_column('schema', 'schema_columns', 'table',         'string',  false, false, true, 'the name of the table the column is in', '1.81.18', null);
select "schema".add_column('schema', 'schema_columns', 'column_name',   'string',  false, false, true, 'the name of the column', '1.0a100', '1.81.17');
select "schema".add_column('schema', 'schema_columns', 'name',          'string',  false, false, true, 'the name of the column', '1.81.18', null);
select "schema".add_column('schema', 'schema_columns', 'sinceVersion',  'string',  false, false, true, 'the first aoserv_protocol version this column was in', '1.81.18', null);
select "schema".add_column('schema', 'schema_columns', 'lastVersion',   'string',   true, false, true, 'the last version containing this field', '1.81.18', null);
select "schema".add_column('schema', 'schema_columns', 'index',         'int',     false, false, true, 'the index of the column', '1.0a100', '1.81.17');
select "schema".add_column('schema', 'schema_columns', 'index',         'short',   false, false, true, 'the index of the column', '1.81.18', null);
select "schema".add_column('schema', 'schema_columns', 'type',          'string',  false, false, true, 'the type of data in the column', '1.0a100', null);
select "schema".add_column('schema', 'schema_columns', 'is_nullable',   'boolean', false, false, true, 'if the value may be null', '1.0a100', '1.81.17');
select "schema".add_column('schema', 'schema_columns', 'isNullable',    'boolean', false, false, true, 'if the value may be null', '1.81.18', null);
select "schema".add_column('schema', 'schema_columns', 'is_unique',     'boolean', false, false, true, 'if true, the value is unique across rows', '1.0a100', '1.81.17');
select "schema".add_column('schema', 'schema_columns', 'isUnique',      'boolean', false, false, true, 'if true, the value is unique across rows', '1.81.18', null);
select "schema".add_column('schema', 'schema_columns', 'is_public',     'boolean', false, false, true, 'if the value is publicly accessible', '1.0a100', '1.81.17');
select "schema".add_column('schema', 'schema_columns', 'isPublic',      'boolean', false, false, true, 'if the value is publicly accessible', '1.81.18', null);
select "schema".add_column('schema', 'schema_columns', 'description',   'string',  false, false, true, 'any description associated with the column', '1.0a100', null);
select "schema".add_column('schema', 'schema_columns', 'since_version', 'string',  false, false, true, 'the first aoserv_protocol version this column was in', '1.0a101', '1.81.17');
select "schema".add_column('schema', 'schema_columns', 'last_version',  'string',   true, false, true, 'the last version containing this field', '1.0a104', '1.81.17');
