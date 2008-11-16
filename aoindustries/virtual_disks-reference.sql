alter table virtual_disks
  add constraint virtual_server_fkey
  foreign key (virtual_server)
  references virtual_servers (server)
  on delete restrict
  on update cascade
;
alter table virtual_disks
  add constraint primary_minimum_raid_type_fkey
  foreign key (primary_minimum_raid_type)
  references raid_types (type)
  on delete restrict
  on update cascade
;
alter table virtual_disks
  add constraint secondary_minimum_raid_type_fkey
  foreign key (secondary_minimum_raid_type)
  references raid_types (type)
  on delete restrict
  on update cascade
;
alter table virtual_disks
  add constraint primary_minimum_disk_type_fkey
  foreign key (primary_minimum_disk_type)
  references disk_types (type)
  on delete restrict
  on update cascade
;
alter table virtual_disks
  add constraint secondary_minimum_disk_type_fkey
  foreign key (secondary_minimum_disk_type)
  references disk_types (type)
  on delete restrict
  on update cascade
;
