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

select "schema".add_column('postgresql', 'postgres_versions', 'version',         'fkey',   false,  true, true, 'a reference to the PostgreSQL details in the <code>technology_versions</code> table', '1.0a100', null);
select "schema".add_column('postgresql', 'postgres_versions', 'default_port',    'int',    false,  true, true, '', '1.0a100', '1.0a109');
select "schema".add_column('postgresql', 'postgres_versions', 'minor_version',   'string', false, false, true, 'the minor version for this version (used for installation at /usr/postgresql/<minor_version>', '1.0a121', null);
select "schema".add_column('postgresql', 'postgres_versions', 'postgis_version', 'fkey',    true, false, true, 'a reference to the PostGIS defails in the <code>technology_versions</code> table', '1.27', null);
