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

select "schema".add_column('schema', 'schema_foreign_keys', 'pkey',           'pkey',    false,  true, true, 'a generated unique pkey', '1.0a100', '1.81.17');
select "schema".add_column('schema', 'schema_foreign_keys', 'id',             'pkey',    false,  true, true, 'a generated unique pkey', '1.81.18', null);
select "schema".add_column('schema', 'schema_foreign_keys', 'key_column',     'fkey',    false, false, true, 'the column that references another column', '1.0a100', '1.81.17');
select "schema".add_column('schema', 'schema_foreign_keys', 'column',         'fkey',    false, false, true, 'the column that references another column', '1.81.18', null);
select "schema".add_column('schema', 'schema_foreign_keys', 'foreign_column', 'fkey',    false, false, true, 'the referenced column', '1.0a100', '1.81.17');
select "schema".add_column('schema', 'schema_foreign_keys', 'foreignColumn',  'fkey',    false, false, true, 'the referenced column', '1.81.18', null);
select "schema".add_column('schema', 'schema_foreign_keys', 'is_bridge',      'boolean', false, false, true, 'the foreign key should be used as a dataverse bridge', '1.0a100', '1.30');
select "schema".add_column('schema', 'schema_foreign_keys', 'tied_bridge',    'fkey',     true, false, true, 'the bridge that should be automatically followed', '1.0a100', '1.30');
select "schema".add_column('schema', 'schema_foreign_keys', 'since_version',  'string',  false, false, true, 'the first aoserv_protocol version to have this reference', '1.0a101', '1.81.17');
select "schema".add_column('schema', 'schema_foreign_keys', 'sinceVersion',   'string',  false, false, true, 'the first aoserv_protocol version to have this reference', '1.81.18', null);
select "schema".add_column('schema', 'schema_foreign_keys', 'last_version',   'string',   true, false, true, 'the last aoserv_protocol version to have this references, or null if not yet removed', '1.0a104', '1.81.17');
select "schema".add_column('schema', 'schema_foreign_keys', 'lastVersion',    'string',   true, false, true, 'the last aoserv_protocol version to have this references, or null if not yet removed', '1.81.18', null);
