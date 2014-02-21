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
  minimum_disk_speed integer
    check (minimum_disk_speed is null or minimum_disk_speed>0),
  minimum_disk_speed_target integer
    check (minimum_disk_speed_target is null or minimum_disk_speed_target>0),
  extents integer
    not null
    check (extents>0),
  weight smallint
    not null
    check (weight in (1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024)),
  weight_target smallint
    not null
    check (weight_target in (1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024)),
  verify_day_of_week int
    not null
    default 7, -- Calendar.SATURDAY
  verify_hour_of_day int
    not null
    default 1, -- 1:00 AM
  unique(virtual_server, device)
);
grant all on virtual_disks to aoadmin;
grant select on virtual_disks to aoserv_app;
