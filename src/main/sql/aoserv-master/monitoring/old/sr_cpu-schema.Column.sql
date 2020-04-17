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

select "schema".add_column('monitoring', 'sr_cpu', 'pkey',          'pkey',  false,  true, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_cpu', 'server_report', 'fkey',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_cpu', 'cpu_number',    'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_cpu', 'user_min',      'float', false, false, false, 'minimum user CPU %', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_cpu', 'user_avg',      'float', false, false, false, 'average user CPU %', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_cpu', 'user_max',      'float', false, false, false, 'maximum user CPU %', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_cpu', 'nice_min',      'float', false, false, false, 'minimum nice CPU %', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_cpu', 'nice_avg',      'float', false, false, false, 'average nice CPU %', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_cpu', 'nice_max',      'float', false, false, false, 'maximum nice CPU %', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_cpu', 'sys_min',       'float', false, false, false, 'minimum system CPU %', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_cpu', 'sys_avg',       'float', false, false, false, 'average system CPU %', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_cpu', 'sys_max',       'float', false, false, false, 'maximum system CPU %', '1.0a100', '1.30');
