create sequence         infrastructure."VirtualDisk_id_seq" cycle;
grant all            on infrastructure."VirtualDisk_id_seq" to aoadmin;
grant select, update on infrastructure."VirtualDisk_id_seq" to infrastructure;

create table infrastructure."VirtualDisk" (
  id integer
    default nextval('infrastructure."VirtualDisk_id_seq"')
    primary key,
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
  -- TODO: Make an enum both in PostgreSQL and Java somehow?  Or a DOMAIN is better?
  weight smallint
    not null
    check (weight in (1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024)),
  weight_target smallint
    not null
    check (weight_target in (1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024)),
  verify_day_of_week integer
    not null
    default 7, -- Calendar.SATURDAY
  verify_hour_of_day integer
    not null
    default 1, -- 1:00 AM
  unique(virtual_server, device)
);
grant all                    on infrastructure."VirtualDisk" to aoadmin;
grant select                 on infrastructure."VirtualDisk" to aoserv_app;
grant select, insert, update on infrastructure."VirtualDisk" to infrastructure;
