alter table physical_servers
  add constraint server_fkey
  foreign key (server)
  references servers (pkey)
  on delete restrict
  on update cascade
;
alter table physical_servers
  add constraint rack_fkey
  foreign key (rack)
  references racks (pkey)
  on delete restrict
  on update cascade
;
alter table physical_servers
  add constraint processor_type_fkey
  foreign key (processor_type)
  references processor_types (type)
  on delete restrict
  on update cascade
;
