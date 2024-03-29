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

select "schema".add_column('net', 'ip_addresses', 'pkey',                       'pkey',       false,  true, false, 'a generated, unique key',                                           '1.0a100', '1.81.17');
select "schema".add_column('net', 'ip_addresses', 'id',                         'pkey',       false,  true, false, 'a generated, unique key',                                           '1.81.18', null);
select "schema".add_column('net', 'ip_addresses', 'ip_address',                 'ip_address', false, false, false, 'the IP address',                                                    '1.0a100', '1.81.17');
select "schema".add_column('net', 'ip_addresses', 'inetAddress',                'ip_address', false, false, false, 'the IP address',                                                    '1.81.18', null);
select "schema".add_column('net', 'ip_addresses', 'net_device',                 'fkey',        true, false, false, 'the network_device that this IP address is routed through.  May only be null for 0.0.0.0', '1.0a100', '1.81.17');
select "schema".add_column('net', 'ip_addresses', 'device',                     'fkey',        true, false, false, 'the network_device that this IP address is routed through.  May only be null for 0.0.0.0', '1.81.18', null);
select "schema".add_column('net', 'ip_addresses', 'is_alias',                   'boolean',    false, false, false, 'indicates that the IP address is using IP aliasing on the network device', '1.0a100', '1.81.17');
select "schema".add_column('net', 'ip_addresses', 'isAlias',                    'boolean',    false, false, false, 'indicates that the IP address is using IP aliasing on the network device', '1.81.18', null);
select "schema".add_column('net', 'ip_addresses', 'hostname',                   'hostname',   false, false, false, 'the reverse mapping for the hostname',                              '1.0a100', '1.68');
select "schema".add_column('net', 'ip_addresses', 'hostname',                   'domain_name', true, false, false, 'the reverse mapping for the hostname, null only allowed for the "0.0.0.0"" or "::" IP addresses', '1.69', null);
select "schema".add_column('net', 'ip_addresses', 'package',                    'package',    false, false, false, 'the package that the IP address is part of',                        '1.0a100', '1.80');
select "schema".add_column('net', 'ip_addresses', 'package',                    'accounting', false, false, false, 'the package that the IP address is part of',                        '1.80.0',  '1.81.17');
select "schema".add_column('net', 'ip_addresses', 'package',                    'fkey',       false, false, false, 'the package that the IP address is part of',                        '1.81.18',  null);
select "schema".add_column('net', 'ip_addresses', 'price',                      'decimal_2',   true, false, false, '',                                                                  '1.0a100', '1.0a122');
select "schema".add_column('net', 'ip_addresses', 'created',                    'time',       false, false, false, 'the time the IP address was added',                                 '1.0a100', null);
select "schema".add_column('net', 'ip_addresses', 'available',                  'boolean',    false, false, false, 'a flag if the IP address is available',                             '1.0a100', '1.81.17');
select "schema".add_column('net', 'ip_addresses', 'isAvailable',                'boolean',    false, false, false, 'a flag if the IP address is available',                             '1.81.18', null);
select "schema".add_column('net', 'ip_addresses', 'is_overflow',                'boolean',    false, false, false, 'indicates that the IP address is shared by different accounts',     '1.0a100', '1.81.17');
select "schema".add_column('net', 'ip_addresses', 'isOverflow',                 'boolean',    false, false, false, 'indicates that the IP address is shared by different accounts',     '1.81.18', null);
select "schema".add_column('net', 'ip_addresses', 'is_dhcp',                    'boolean',    false, false, false, 'the IP address is obtained via DHCP',                               '1.0a100', '1.81.17');
select "schema".add_column('net', 'ip_addresses', 'isDhcp',                     'boolean',    false, false, false, 'the IP address is obtained via DHCP',                               '1.81.18', null);
select "schema".add_column('net', 'ip_addresses', 'ping_monitor_enabled',       'boolean',    false, false, false, 'if ping (ICMP ECHO) is available for monitoring, defaults to true', '1.30',    '1.81.17');
select "schema".add_column('net', 'ip_addresses', 'external_ip_address',        'ip_address',  true, false, false, 'the external IP address, if different than ip_address',             '1.34',    '1.81.17');
select "schema".add_column('net', 'ip_addresses', 'externalInetAddress',        'ip_address',  true, false, false, 'the external IP address, if different than ip_address',             '1.81.18', null);
select "schema".add_column('net', 'ip_addresses', 'netmask',                    'string',     false, false, false, 'the netmask of the local network',                                  '1.38',    null);
select "schema".add_column('net', 'ip_addresses', 'check_blacklists_over_smtp', 'boolean',    false, false, false, 'allows determining some types of blacklists over SMTP protocol',    '1.75',    '1.81.17');
select "schema".add_column('net', 'ip_addresses', 'monitoring_enabled',         'boolean',    false, false, false, 'indicates that this IP address should be monitored',                '1.81.17', '1.81.17');
