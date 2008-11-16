create sequence virtual_disks_pkey_seq cycle;
grant all on virtual_disks_pkey_seq to aoadmin;
grant select on virtual_disks_pkey_seq to aoserv_app;

create table virtual_disks (
  pkey integer
    default nextval('virtual_disks_pkey_seq')
    constraint virtual_disks_pkey primary key,
  virtual_server integer
    not null,
  device text
    not null
    check (device=lower(device)),
  primary_minimum_raid_type text,
  secondary_minimum_raid_type text,
  primary_minimum_disk_type text,
  secondary_minimum_disk_type text,
  primary_minimum_disk_speed integer
    check (primary_minimum_disk_speed is null or primary_minimum_disk_speed>0),
  secondary_minimum_disk_speed integer
    check (secondary_minimum_disk_speed is null or secondary_minimum_disk_speed>0),
  extents integer
    not null
    check (extents>0),
  primary_weight smallint
    not null
    check (primary_weight>=1 and primary_weight<=1024),
  secondary_weight smallint
    not null
    check (secondary_weight>=1 and secondary_weight<=1024),
  primary_physical_volumes_locked boolean
    not null,
  secondary_physical_volumes_locked boolean
    not null,
  unique(virtual_server, device)
);
grant all on virtual_disks to aoadmin;
grant select on virtual_disks to aoserv_app;
