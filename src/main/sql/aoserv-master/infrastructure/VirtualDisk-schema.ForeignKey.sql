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

select "schema".add_foreign_key('infrastructure', 'virtual_disks', 'virtual_server',              'infrastructure', 'virtual_servers', 'server', '1.36', null);
select "schema".add_foreign_key('infrastructure', 'virtual_disks', 'minimum_raid_type',           'infrastructure', 'raid_types',      'type',   '1.41', '1.41');
select "schema".add_foreign_key('infrastructure', 'virtual_disks', 'primary_minimum_raid_type',   'infrastructure', 'raid_types',      'type',   '1.36', '1.40');
select "schema".add_foreign_key('infrastructure', 'virtual_disks', 'secondary_minimum_raid_type', 'infrastructure', 'raid_types',      'type',   '1.36', '1.40');
select "schema".add_foreign_key('infrastructure', 'virtual_disks', 'minimum_disk_type',           'infrastructure', 'disk_types',      'type',   '1.41', '1.41');
select "schema".add_foreign_key('infrastructure', 'virtual_disks', 'primary_minimum_disk_type',   'infrastructure', 'disk_types',      'type',   '1.36', '1.40');
select "schema".add_foreign_key('infrastructure', 'virtual_disks', 'secondary_minimum_disk_type', 'infrastructure', 'disk_types',      'type',   '1.36', '1.40');
