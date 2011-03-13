alter table racks
  add constraint resource_fkey
  foreign key (resource_type, resource)
  references resources (resource_type, pkey)
  on delete restrict
  on update cascade
;
alter table racks
  add constraint farm_fkey
  foreign key (farm)
  references server_farms (resource)
  on delete restrict
  on update cascade
;
