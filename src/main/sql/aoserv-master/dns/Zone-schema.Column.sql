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

select "schema".add_column('dns', 'dns_zones', 'zone',       'zone',       false,  true, false, 'the zone (domain) that is hosted', '1.0a100', null);
select "schema".add_column('dns', 'dns_zones', 'file',       'string',     false, false, false, 'the filename of the zone file', '1.0a100', null);
select "schema".add_column('dns', 'dns_zones', 'package',    'package',    false, false, false, 'the package that owns the zones', '1.0a100', '1.80');
select "schema".add_column('dns', 'dns_zones', 'package',    'accounting', false, false, false, 'the package that owns the zones', '1.80.0', null);
select "schema".add_column('dns', 'dns_zones', 'hostmaster', 'string',     false, false, false, 'the email address of the person in charge of the domain', '1.0a100', null);
select "schema".add_column('dns', 'dns_zones', 'serial',     'long',       false, false, false, 'the ever-incrementing serial number for the file', '1.0a100', null);
select "schema".add_column('dns', 'dns_zones', 'ttl',        'int',        false, false, false, '', '1.0a127', null);
