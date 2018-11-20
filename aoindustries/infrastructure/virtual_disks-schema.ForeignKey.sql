select "schema".add_foreign_key('infrastructure', 'virtual_disks', 'virtual_server', 'virtual_servers', 'server', '1.36', null);
select "schema".add_foreign_key('infrastructure', 'virtual_disks', 'minimum_raid_type', 'raid_types', 'type', '1.41', '1.41');
select "schema".add_foreign_key('infrastructure', 'virtual_disks', 'primary_minimum_raid_type', 'raid_types', 'type', '1.36', '1.40');
select "schema".add_foreign_key('infrastructure', 'virtual_disks', 'secondary_minimum_raid_type', 'raid_types', 'type', '1.36', '1.40');
select "schema".add_foreign_key('infrastructure', 'virtual_disks', 'minimum_disk_type', 'disk_types', 'type', '1.41', '1.41');
select "schema".add_foreign_key('infrastructure', 'virtual_disks', 'primary_minimum_disk_type', 'disk_types', 'type', '1.36', '1.40');
select "schema".add_foreign_key('infrastructure', 'virtual_disks', 'secondary_minimum_disk_type', 'disk_types', 'type', '1.36', '1.40');
