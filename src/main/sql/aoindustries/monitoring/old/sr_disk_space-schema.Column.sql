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

select "schema".add_column('monitoring', 'sr_disk_space', 'pkey',          'pkey',  false,  true, false, 'a generated pkey', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_space', 'server_report', 'fkey',  false, false, false, 'the report this is part of', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_space', 'device_major',  'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_space', 'device_minor',  'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_space', 'total_min',     'long',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_space', 'total_avg',     'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_space', 'total_max',     'long',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_space', 'used_min',      'long',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_space', 'used_avg',      'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_space', 'used_max',      'long',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_space', 'free_min',      'long',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_space', 'free_avg',      'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_space', 'free_max',      'long',  false, false, false, '', '1.0a100', '1.30');
