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

select "schema".add_foreign_key('mysql', 'mysql_servers', 'bind',      'net',          'net_binds',           'id',     '1.81.18', null);
select "schema".add_foreign_key('mysql', 'mysql_servers', 'ao_server', 'linux',        'ao_servers',          'server', '1.4',     null);
select "schema".add_foreign_key('mysql', 'mysql_servers', 'version',   'distribution', 'technology_versions', 'pkey',   '1.4',     null);
select "schema".add_foreign_key('mysql', 'mysql_servers', 'net_bind',  'net',          'net_binds',           'pkey',   '1.4',     '1.81.17');
select "schema".add_foreign_key('mysql', 'mysql_servers', 'package',   'billing',      'packages',            'name',   '1.28',    '1.80');
select "schema".add_foreign_key('mysql', 'mysql_servers', 'package',   'billing',      'packages',            'name',   '1.80.0',  '1.81.17');
