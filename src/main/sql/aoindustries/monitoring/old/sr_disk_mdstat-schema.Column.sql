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

select "schema".add_column('monitoring', 'sr_disk_mdstat', 'pkey',                  'pkey',  false,  true, false, 'a generated pkey', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_mdstat', 'server_report',         'fkey',  false, false, false, 'the report this is part of', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_mdstat', 'device_major',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_mdstat', 'device_minor',          'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_mdstat', 'total_partitions_min',  'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_mdstat', 'total_partitions_avg',  'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_mdstat', 'total_partitions_max',  'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_mdstat', 'active_partitions_min', 'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_mdstat', 'active_partitions_avg', 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_mdstat', 'active_partitions_max', 'int',   false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_mdstat', 'rebuild_percent_min',   'float',  true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_mdstat', 'rebuild_percent_avg',   'float',  true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_mdstat', 'rebuild_percent_max',   'float',  true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_mdstat', 'rebuild_rate_min',      'int',    true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_mdstat', 'rebuild_rate_avg',      'float',  true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_disk_mdstat', 'rebuild_rate_max',      'int',    true, false, false, '', '1.0a100', '1.30');
