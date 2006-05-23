alter table server_farms
  add constraint backup_farm_fkey
  foreign key (backup_farm)
  references server_farms (name)
  on delete restrict
  on update cascade
;
alter table server_farms
  add constraint owner_fkey
  foreign key (owner)
  references packages (pkey)
  on delete restrict
  on update cascade
;
