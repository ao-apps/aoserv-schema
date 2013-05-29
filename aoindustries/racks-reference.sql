alter table racks
  add constraint farm_fkey
  foreign key (farm)
  references server_farms (name)
  on delete restrict
  on update cascade
;
