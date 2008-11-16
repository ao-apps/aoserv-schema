alter table virtual_servers
  add constraint server_fkey
  foreign key (server)
  references servers (pkey)
  on delete restrict
  on update cascade
;
alter table virtual_servers
  add constraint primary_minimum_processor_type_fkey
  foreign key (primary_minimum_processor_type)
  references processor_types (type)
  on delete restrict
  on update cascade
;
alter table virtual_servers
  add constraint secondary_minimum_processor_type_fkey
  foreign key (secondary_minimum_processor_type)
  references processor_types (type)
  on delete restrict
  on update cascade
;
alter table virtual_servers
  add constraint minimum_processor_architecture_fkey
  foreign key (minimum_processor_architecture)
  references architectures (name)
  on delete restrict
  on update cascade
;
alter table virtual_servers
  add constraint primary_physical_server_fkey
  foreign key (primary_physical_server)
  references physical_servers (server)
  on delete restrict
  on update cascade
;
alter table virtual_servers
  add constraint secondary_physical_server_fkey
  foreign key (secondary_physical_server)
  references physical_servers (server)
  on delete restrict
  on update cascade
;
