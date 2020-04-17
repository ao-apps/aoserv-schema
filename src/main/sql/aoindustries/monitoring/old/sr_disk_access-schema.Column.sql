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

select "schema".add_column('monitoring', 'sr_disk_access', 'pkey',          'pkey',  false,  true, false, 'a generated pkey', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'server_report', 'fkey',  false, false, false, 'the report this is part of', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'device_major',  'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'device_minor',  'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'blocks_min',    'long',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'blocks_avg',    'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'blocks_max',    'long',  false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'rios_min',      'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'rios_avg',      'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'rios_max',      'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'rmerges_min',   'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'rmerges_avg',   'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'rmerges_max',   'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'rsect_min',     'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'rsect_avg',     'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'rsect_max',     'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'ruse_min',      'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'ruse_avg',      'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'ruse_max',      'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'wios_min',      'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'wios_avg',      'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'wios_max',      'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'wmerge_min',    'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'wmerge_avg',    'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'wmerge_max',    'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'wsect_min',     'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'wsect_avg',     'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'wsect_max',     'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'wuse_min',      'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'wuse_avg',      'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'wuse_max',      'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'running_min',   'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'running_avg',   'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'running_max',   'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'use_min',       'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'use_avg',       'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'use_max',       'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'aveq_min',      'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'aveq_avg',      'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_access', 'aveq_max',      'float', false, false, false, '', '1.0a100', '1.30');
