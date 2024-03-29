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

select "schema".add_column('net', 'net_devices', 'pkey',                         'pkey',        false,  true, false, 'a unique, generated pkey', '1.0a100', null);
select "schema".add_column('net', 'net_devices', 'ao_server',                    'fkey',        false, false, false, 'the pkey of the server that contains the device', '1.0a100', '1.32');
select "schema".add_column('net', 'net_devices', 'server',                       'fkey',        false, false, false, 'the pkey of the server that contains the device', '1.33', null);
select "schema".add_column('net', 'net_devices', 'device_id',                    'string',      false, false, false, 'the name of the device', '1.0a100', '1.81.17');
select "schema".add_column('net', 'net_devices', 'deviceId',                     'string',      false, false, false, 'the name of the device', '1.81.18', null);
select "schema".add_column('net', 'net_devices', 'description',                  'string',      false, false, false, 'a description of the device', '1.0a100', null);
select "schema".add_column('net', 'net_devices', 'delete_redhat_route',          'string',       true, false, false, 'the default routing from the network scripts that should be removed', '1.0a100', '1.0a111');
select "schema".add_column('net', 'net_devices', 'delete_route',                 'string',       true, false, false, 'the default routing from the network scripts that should be removed', '1.0a112', null);
select "schema".add_column('net', 'net_devices', 'gateway',                      'ip_address',   true, false, false, 'the gateway IP address', '1.0a100', null);
select "schema".add_column('net', 'net_devices', 'netmask',                      'string',      false, false, false, 'the netmask of the local network', '1.0a100', '1.37');
select "schema".add_column('net', 'net_devices', 'network',                      'ip_address',   true, false, false, 'the local network', '1.0a112', null);
select "schema".add_column('net', 'net_devices', 'broadcast',                    'ip_address',   true, false, false, 'the broadcast IP', '1.0a112', null);
select "schema".add_column('net', 'net_devices', 'mac_address',                  'string',       true,  true, false, 'the MAC address to be used on the device', '1.0a128', '1.80');
select "schema".add_column('net', 'net_devices', 'mac_address',                  'mac_address',  true,  true, false, 'the MAC address to be used on the device', '1.80.0', null);
select "schema".add_column('net', 'net_devices', 'max_bit_rate',                 'long',         true, false, false, 'the maximum bits per second for this network device', '1.2', null);
select "schema".add_column('net', 'net_devices', 'monitoring_bit_rate_low',      'long',         true, false, false, 'the 5-minute average that will trigger a low-level alert', '1.35', null);
select "schema".add_column('net', 'net_devices', 'monitoring_bit_rate_medium',   'long',         true, false, false, 'the 5-minute average that will trigger a medium-level alert', '1.35', null);
select "schema".add_column('net', 'net_devices', 'monitoring_bit_rate_high',     'long',         true, false, false, 'the 5-minute average that will trigger a high-level alert', '1.35', null);
select "schema".add_column('net', 'net_devices', 'monitoring_bit_rate_critical', 'long',         true, false, false, 'the 5-minute average that will trigger a critical-level alert', '1.35', null);
select "schema".add_column('net', 'net_devices', 'monitoring_enabled',           'boolean',     false, false, false, 'indicates that this device should be monitored', '1.70', null);
