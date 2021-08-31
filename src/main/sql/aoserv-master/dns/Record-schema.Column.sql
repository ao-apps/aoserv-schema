/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020, 2021  AO Industries, Inc.
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

select "schema".add_column('dns', 'dns_records', 'pkey',         'pkey',     false,  true, false, 'a generated pkey', '1.0a100', null);
select "schema".add_column('dns', 'dns_records', 'zone',         'zone',     false, false, false, 'the zone as found in dns_zones', '1.0a100', null);
select "schema".add_column('dns', 'dns_records', 'domain',       'hostname', false, false, false, 'the first column in the zone files', '1.0a100', '1.68');
select "schema".add_column('dns', 'dns_records', 'domain',       'string',   false, false, false, 'the first column in the zone files', '1.69', null);
select "schema".add_column('dns', 'dns_records', 'type',         'string',   false, false, false, 'the type as found in dns_types', '1.0a100', null);
select "schema".add_column('dns', 'dns_records', 'mx_priority',  'int',       true, false, false, 'the priority for the MX entries', '1.0a100', '1.71');
select "schema".add_column('dns', 'dns_records', 'priority',     'int',       true, false, false, 'the priority for the entry', '1.72', null);
select "schema".add_column('dns', 'dns_records', 'weight',       'int',       true, false, false, 'the relative weight for records with the same priority', '1.72', null);
select "schema".add_column('dns', 'dns_records', 'port',         'int',       true, false, false, 'the TCP or UDP port on which the service is to be found', '1.72', null);
select "schema".add_column('dns', 'dns_records', 'flag',         'short',     true, false, false, 'the CAA flag', '1.86.0', null);
select "schema".add_column('dns', 'dns_records', 'tag',          'string',    true, false, false, 'the CAA tag',  '1.86.0', null);
select "schema".add_column('dns', 'dns_records', 'destination',  'string',   false, false, false, 'the destination, either IP address, hostname, or other value depending on the type of record', '1.0a100', null);
select "schema".add_column('dns', 'dns_records', 'dhcp_address', 'int',       true, false, false, 'the pkey of the IP address whos changes are followed', '1.0a100', '1.68');
select "schema".add_column('dns', 'dns_records', 'dhcp_address', 'fkey',      true, false, false, 'the pkey of the IP address whos changes are followed', '1.69', '1.81.17');
select "schema".add_column('dns', 'dns_records', 'dhcpAddress',  'fkey',      true, false, false, 'the id of the IP address whos changes are followed', '1.81.18', null);
select "schema".add_column('dns', 'dns_records', 'ttl',          'int',       true, false, false, 'the time to live field', '1.0a127', null);
