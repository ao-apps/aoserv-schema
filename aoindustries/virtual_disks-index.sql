create index virtual_disks_primary_minimum_raid_type_idx on virtual_disks (
  primary_minimum_raid_type
);
create index virtual_disks_secondary_minimum_raid_type_idx on virtual_disks (
  secondary_minimum_raid_type
);
create index virtual_disks_primary_minimum_disk_type_idx on virtual_disks (
  primary_minimum_disk_type
);
create index virtual_disks_secondary_minimum_disk_type_idx on virtual_disks (
  secondary_minimum_disk_type
);
