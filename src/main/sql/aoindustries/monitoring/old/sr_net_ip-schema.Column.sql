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

select "schema".add_column('monitoring', 'sr_net_ip', 'server_report',         'fkey',  false , true, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'packet_min',            'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'packet_avg',            'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'packet_max',            'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'invalid_headers_min',   'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'invalid_headers_avg',   'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'invalid_headers_max',   'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'forward_min',           'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'forward_avg',           'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'forward_max',           'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'discard_min',           'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'discard_avg',           'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'discard_max',           'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'deliver_min',           'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'deliver_avg',           'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'deliver_max',           'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'request_min',           'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'request_avg',           'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'request_max',           'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'out_drop_min',          'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'out_drop_avg',          'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'out_drop_max',          'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'out_drop_no_route_min', 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'out_drop_no_route_avg', 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'out_drop_no_route_max', 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'out_drop_timeout_min',  'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'out_drop_timeout_avg',  'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'out_drop_timeout_max',  'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'ra_req_min',            'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'ra_req_avg',            'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'ra_req_max',            'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'ra_ok_min',             'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'ra_ok_avg',             'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'ra_ok_max',             'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'ra_fail_min',           'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'ra_fail_avg',           'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_ip', 'ra_fail_max',           'float', false, false, false, '', '1.0a100', '1.30');
