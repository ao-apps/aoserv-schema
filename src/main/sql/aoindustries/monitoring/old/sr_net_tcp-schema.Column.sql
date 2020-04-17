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

select "schema".add_column('monitoring', 'sr_net_tcp', 'server_report',           'fkey',  false , true, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'active_connect_min',      'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'active_connect_avg',      'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'active_connect_max',      'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'passive_connect_min',     'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'passive_connect_avg',     'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'passive_connect_max',     'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'fail_connect_min',        'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'fail_connect_avg',        'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'fail_connect_max',        'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'in_reset_min',            'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'in_reset_avg',            'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'in_reset_max',            'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'connect_min',             'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'connect_avg',             'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'connect_max',             'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'segment_receive_min',     'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'segment_receive_avg',     'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'segment_receive_max',     'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'segment_send_min',        'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'segment_send_avg',        'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'segment_send_max',        'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'segment_resend_min',      'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'segment_resend_avg',      'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'segment_resend_max',      'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'bad_segment_receive_min', 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'bad_segment_receive_avg', 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'bad_segment_receive_max', 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'out_reset_min',           'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'out_reset_avg',           'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_net_tcp', 'out_reset_max',           'float', false, false, false, '', '1.0a100', '1.30');
