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

select "schema".add_column('dns', 'dns_types', 'type',         'string',  false,  true, true, 'the type', '1.0a100', null);
select "schema".add_column('dns', 'dns_types', 'description',  'string',  false, false, true, 'the description of the type', '1.0a100', null);
select "schema".add_column('dns', 'dns_types', 'is_mx',        'boolean', false, false, true, 'flags which types use the MX weight', '1.0a100', '1.71');
select "schema".add_column('dns', 'dns_types', 'has_priority', 'boolean', false, false, true, 'flags which types have a priority', '1.72', null);
select "schema".add_column('dns', 'dns_types', 'has_weight',   'boolean', false, false, true, 'flags which types have a weight', '1.72', null);
select "schema".add_column('dns', 'dns_types', 'has_port',     'boolean', false, false, true, 'flags which types have a port', '1.72', null);
select "schema".add_column('dns', 'dns_types', 'param_ip',     'boolean', false, false, true, 'flags if the parameter is a IP or a hostname', '1.0a100', null);
