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

select "schema".add_column('monitoring', 'sr_processes', 'server_report',             'fkey',  false,  true, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'total_sleep_min',           'int',    true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'total_sleep_avg',           'float',  true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'total_sleep_max',           'int',    true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'user_sleep_min',            'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'user_sleep_avg',            'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'user_sleep_max',            'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'total_run_min',             'int',    true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'total_run_avg',             'float',  true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'total_run_max',             'int',    true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'user_run_min',              'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'user_run_avg',              'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'user_run_max',              'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'total_zombie_min',          'int',    true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'total_zombie_avg',          'float',  true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'total_zombie_max',          'int',    true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'user_zombie_min',           'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'user_zombie_avg',           'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'user_zombie_max',           'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'total_trace_min',           'int',    true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'total_trace_avg',           'float',  true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'total_trace_max',           'int',    true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'user_trace_min',            'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'user_trace_avg',            'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'user_trace_max',            'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'total_uninterruptible_min', 'int',    true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'total_uninterruptible_avg', 'float',  true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'total_uninterruptible_max', 'int',    true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'user_uninterruptible_min',  'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'user_uninterruptible_avg',  'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'user_uninterruptible_max',  'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'total_unknown_min',         'int',    true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'total_unknown_avg',         'float',  true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'total_unknown_max',         'int',    true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'user_unknown_min',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'user_unknown_avg',          'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'user_unknown_max',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'rate_min',                  'float',  true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'rate_avg',                  'float',  true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'rate_max',                  'float',  true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'context_min',               'float',  true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'context_avg',               'float',  true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_processes', 'context_max',               'float',  true, false, false, '', '1.0a100', '1.30');
