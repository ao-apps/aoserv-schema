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

select "schema".add_column('schema', 'aoserv_protocols', 'version',   'string', false,  true, true, 'the unique version number', '1.0a101', null);
select "schema".add_column('schema', 'aoserv_protocols', 'created',   'date',   false, false, true, 'the time the version was added', '1.0a101', null);
select "schema".add_column('schema', 'aoserv_protocols', 'comments',  'string', false, false, true, 'any comments about this version', '1.0a101', null);
select "schema".add_column('schema', 'aoserv_protocols', 'last_used', 'date',    true, false, true, 'the date this protocol was last used', '1.9', '1.81.17');
select "schema".add_column('schema', 'aoserv_protocols', 'lastUsed',  'date',    true, false, true, 'the date this protocol was last used', '1.81.18', null);
