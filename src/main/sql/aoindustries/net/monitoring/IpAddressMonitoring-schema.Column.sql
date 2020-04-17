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

select "schema".add_column('net.monitoring', 'IpAddressMonitoring', 'id',                      'fkey',       false,  true, false, 'id of ip_addresses',                                                '1.81.18', null);
select "schema".add_column('net.monitoring', 'IpAddressMonitoring', 'enabled',                 'boolean',    false, false, false, 'indicates that this IP address should be monitored',                '1.81.18', null);
select "schema".add_column('net.monitoring', 'IpAddressMonitoring', 'pingMonitorEnabled',      'boolean',    false, false, false, 'if ping (ICMP ECHO) is available for monitoring, defaults to true', '1.81.18', null);
select "schema".add_column('net.monitoring', 'IpAddressMonitoring', 'checkBlacklistsOverSmtp', 'boolean',    false, false, false, 'allows determining some types of blacklists over SMTP protocol',    '1.81.18', null);
select "schema".add_column('net.monitoring', 'IpAddressMonitoring', 'verifyDnsPtr',            'boolean',    false, false, false, 'enables monitoring of reverse DNS',                                 '1.81.18', null);
select "schema".add_column('net.monitoring', 'IpAddressMonitoring', 'verifyDnsA',              'boolean',    false, false, false, 'enables monitoring of forward DNS',                                 '1.81.18', null);
