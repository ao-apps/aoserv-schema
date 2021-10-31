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

select "schema".add_column('monitoring', 'sr_memory', 'server_report',    'fkey',  false,  true, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'mem_total_min',    'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'mem_total_avg',    'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'mem_total_max',    'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'mem_free_min',     'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'mem_free_avg',     'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'mem_free_max',     'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'mem_shared_min',   'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'mem_shared_avg',   'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'mem_shared_max',   'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'buffers_min',      'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'buffers_avg',      'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'buffers_max',      'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'cached_min',       'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'cached_avg',       'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'cached_max',       'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'swap_cached_min',  'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'swap_cached_avg',  'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'swap_cached_max',  'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'active_min',       'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'active_avg',       'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'active_max',       'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'inact_dirty_min',  'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'inact_dirty_avg',  'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'inact_dirty_max',  'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'inact_clean_min',  'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'inact_clean_avg',  'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'inact_clean_max',  'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'inact_target_min', 'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'inact_target_avg', 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'inact_target_max', 'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'high_total_min',   'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'high_total_avg',   'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'high_total_max',   'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'high_free_min',    'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'high_free_avg',    'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'high_free_max',    'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'low_total_min',    'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'low_total_avg',    'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'low_total_max',    'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'low_free_min',     'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'low_free_avg',     'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_memory', 'low_free_max',     'int',   false, false, false, '', '1.0a100', '1.30');
