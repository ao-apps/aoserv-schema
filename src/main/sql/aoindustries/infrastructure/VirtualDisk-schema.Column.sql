/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2019, 2020  AO Industries, Inc.
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

select "schema".add_column('infrastructure', 'virtual_disks', 'pkey',                              'pkey',    false,  true, false, 'a generated unique ID', '1.36', null);
select "schema".add_column('infrastructure', 'virtual_disks', 'virtual_server',                    'fkey',    false, false, false, 'the virtual server this disk belongs to', '1.36', null);
select "schema".add_column('infrastructure', 'virtual_disks', 'device',                            'string',  false, false, false, 'the per-virtual-server unique device, such as xvda or xvdb', '1.36', null);
select "schema".add_column('infrastructure', 'virtual_disks', 'minimum_raid_type',                 'string',   true, false, false, 'the minimum RAID type for the primary physical server', '1.41', '1.41');
select "schema".add_column('infrastructure', 'virtual_disks', 'primary_minimum_raid_type',         'string',   true, false, false, 'the minimum RAID type for the primary physical server', '1.36', '1.40');
select "schema".add_column('infrastructure', 'virtual_disks', 'secondary_minimum_raid_type',       'string',   true, false, false, 'the minimum RAID type for the secondary physical server', '1.36', '1.40');
select "schema".add_column('infrastructure', 'virtual_disks', 'minimum_disk_type',                 'string',   true, false, false, 'the minimum disk type for the primary physical server', '1.41', '1.41');
select "schema".add_column('infrastructure', 'virtual_disks', 'primary_minimum_disk_type',         'string',   true, false, false, 'the minimum disk type for the primary physical server', '1.36', '1.40');
select "schema".add_column('infrastructure', 'virtual_disks', 'secondary_minimum_disk_type',       'string',   true, false, false, 'the minimum disk type for the secondary physical server', '1.36', '1.40');
select "schema".add_column('infrastructure', 'virtual_disks', 'minimum_disk_speed',                'int',      true, false, false, 'the minimum disk speed in RPM for the primary physical server', '1.41', null);
select "schema".add_column('infrastructure', 'virtual_disks', 'minimum_disk_speed_target',         'int',      true, false, false, 'the minimum disk speed in RPM for the primary physical server', '1.43', null);
select "schema".add_column('infrastructure', 'virtual_disks', 'primary_minimum_disk_speed',        'int',      true, false, false, 'the minimum disk speed in RPM for the primary physical server', '1.36', '1.40');
select "schema".add_column('infrastructure', 'virtual_disks', 'secondary_minimum_disk_speed',      'int',      true, false, false, 'the minimum disk speed in RPM for the secondary physical server', '1.36', '1.40');
select "schema".add_column('infrastructure', 'virtual_disks', 'extents',                           'int',     false, false, false, 'the total number of LVM extents for this device', '1.36', null);
select "schema".add_column('infrastructure', 'virtual_disks', 'weight',                            'short',   false, false, false, 'the amount of primary disk I/O allocated to this virtual device on a scale of 1-1024', '1.41', null);
select "schema".add_column('infrastructure', 'virtual_disks', 'weight_target',                     'short',   false, false, false, 'the amount of primary disk I/O allocated to this virtual device on a scale of 1-1024', '1.43', null);
select "schema".add_column('infrastructure', 'virtual_disks', 'primary_weight',                    'short',   false, false, false, 'the amount of primary disk I/O allocated to this virtual device on a scale of 1-1024', '1.36', '1.40');
select "schema".add_column('infrastructure', 'virtual_disks', 'secondary_weight',                  'short',   false, false, false, 'the amount of secondary disk I/O allocated to this virtual device on a scale of 1-1024', '1.36', '1.40');
select "schema".add_column('infrastructure', 'virtual_disks', 'primary_physical_volumes_locked',   'boolean', false, false, false, 'indicates this device is locked and should not be moved by automated means', '1.36', '1.42');
select "schema".add_column('infrastructure', 'virtual_disks', 'secondary_physical_volumes_locked', 'boolean', false, false, false, 'indicates this device is locked and should not be moved by automated means', '1.36', '1.42');
select "schema".add_column('infrastructure', 'virtual_disks', 'verify_day_of_week',                'int',     false, false, false, 'the day of the week verification will begin', '1.72', null);
select "schema".add_column('infrastructure', 'virtual_disks', 'verify_hour_of_day',                'int',     false, false, false, 'the hour of day verification will begin', '1.72', null);
