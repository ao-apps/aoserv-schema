alter table infrastructure."PhysicalServer"
  add constraint server_fkey
  foreign key (server)
  references server."Server" (pkey)
  on delete restrict
  on update cascade
;
alter table infrastructure."PhysicalServer"
  add constraint rack_fkey
  foreign key (rack)
  references infrastructure."Rack" (pkey)
  on delete restrict
  on update cascade
;
alter table infrastructure."PhysicalServer"
  add constraint processor_type_fkey
  foreign key (processor_type)
  references infrastructure."ProcessorType" ("type")
  on delete restrict
  on update cascade
;
