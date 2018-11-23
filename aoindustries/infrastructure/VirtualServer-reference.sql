alter table infrastructure."VirtualServer"
  add constraint server_fkey
  foreign key (server)
  references servers (pkey)
  on delete restrict
  on update cascade
;
alter table infrastructure."VirtualServer"
  add constraint minimum_processor_type_fkey
  foreign key (minimum_processor_type)
  references infrastructure."ProcessorType" ("type")
  on delete restrict
  on update cascade
;
alter table infrastructure."VirtualServer"
  add constraint minimum_processor_architecture_fkey
  foreign key (minimum_processor_architecture)
  references distribution."Architecture" ("name")
  on delete restrict
  on update cascade
;
