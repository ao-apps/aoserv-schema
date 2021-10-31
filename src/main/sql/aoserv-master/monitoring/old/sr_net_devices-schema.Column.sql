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

select "schema".add_column('monitoring', 'sr_net_devices', 'pkey',              'pkey',   false,  true, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'server_report',     'fkey',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'device_id',         'string', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'rx_bytes_min',      'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'rx_bytes_avg',      'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'rx_bytes_max',      'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'rx_packets_min',    'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'rx_packets_avg',    'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'rx_packets_max',    'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'rx_errors_min',     'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'rx_errors_avg',     'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'rx_errors_max',     'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'rx_drop_min',       'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'rx_drop_avg',       'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'rx_drop_max',       'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'rx_fifo_min',       'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'rx_fifo_avg',       'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'rx_fifo_max',       'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'rx_frame_min',      'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'rx_frame_avg',      'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'rx_frame_max',      'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'rx_compress_min',   'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'rx_compress_avg',   'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'rx_compress_max',   'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'rx_multicast_min',  'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'rx_multicast_avg',  'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'rx_multicast_max',  'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'tx_bytes_min',      'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'tx_bytes_avg',      'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'tx_bytes_max',      'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'tx_packets_min',    'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'tx_packets_avg',    'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'tx_packets_max',    'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'tx_errors_min',     'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'tx_errors_avg',     'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'tx_errors_max',     'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'tx_drop_min',       'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'tx_drop_avg',       'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'tx_drop_max',       'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'tx_fifo_min',       'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'tx_fifo_avg',       'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'tx_fifo_max',       'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'tx_colls_min',      'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'tx_colls_avg',      'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'tx_colls_max',      'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'tx_carrier_min',    'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'tx_carrier_avg',    'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'tx_carrier_max',    'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'tx_compressed_min', 'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'tx_compressed_avg', 'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'tx_compressed_max', 'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'listen_min',        'int',    false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'listen_avg',        'float',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_devices', 'listen_max',        'int',    false, false, false, '', '1.0a100', '1.30');
