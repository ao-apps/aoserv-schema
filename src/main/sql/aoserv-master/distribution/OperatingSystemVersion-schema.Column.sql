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

select "schema".add_column('distribution', 'operating_system_versions', 'pkey',                       'pkey',    false,  true, true, 'a generated, unique ID', '1.0a100', null);
select "schema".add_column('distribution', 'operating_system_versions', 'operating_system',           'string',  false, false, true, 'the name of the OS', '1.0a100', null);
select "schema".add_column('distribution', 'operating_system_versions', 'version_number',             'string',  false, false, true, 'the number of OS version', '1.0a100', null);
select "schema".add_column('distribution', 'operating_system_versions', 'version_name',               'string',  false, false, true, 'the name of this OS release', '1.0a100', null);
select "schema".add_column('distribution', 'operating_system_versions', 'architecture',               'string',  false, false, true, 'the name of the architecture', '1.0a108', null);
select "schema".add_column('distribution', 'operating_system_versions', 'display',                    'string',  false, false, true, 'the full display name for this version', '1.0a100', '1.0a107');
select "schema".add_column('distribution', 'operating_system_versions', 'display',                    'string',  false,  true, true, 'the full display name for this version', '1.0a108', null);
select "schema".add_column('distribution', 'operating_system_versions', 'is_aoserv_daemon_supported', 'boolean', false, false, true, 'can AOServ Daemon be ran on this OS', '1.0a108', null);
select "schema".add_column('distribution', 'operating_system_versions', 'sort_order',                 'short',   false,  true, true, 'the default sort order', '1.3', null);
