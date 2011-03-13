alter table physical_servers
  add constraint resource_fkey
  foreign key (resource_type, resource)
  references servers (resource_type, resource)
  on delete restrict
  on update cascade
;
alter table physical_servers
  add constraint server_farm_fkey
  foreign key (server_farm, resource)
  references servers (farm, resource)
  on delete restrict
  on update cascade
;
alter table physical_servers
  add constraint rack_fkey
  foreign key (rack, rack_farm)
  references racks (resource, farm)
  on delete restrict
  on update cascade
;
alter table physical_servers
  add constraint processor_type_fkey
  foreign key (processor_type)
  references processor_types ("type")
  on delete restrict
  on update cascade
;
