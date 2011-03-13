alter table virtual_servers
  add constraint resource_fkey
  foreign key (resource_type, resource)
  references servers (resource_type, resource)
  on delete restrict
  on update cascade
;
alter table virtual_servers
  add constraint minimum_processor_type_fkey
  foreign key (minimum_processor_type)
  references processor_types ("type")
  on delete restrict
  on update cascade
;
alter table virtual_servers
  add constraint minimum_processor_architecture_fkey
  foreign key (minimum_processor_architecture)
  references architectures ("name")
  on delete restrict
  on update cascade
;
