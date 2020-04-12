alter table infrastructure."PhysicalServer"
  add constraint server_fkey
  foreign key (server)
  references net."Host" (id)
  on delete restrict
  on update cascade
;
alter table infrastructure."PhysicalServer"
  add constraint rack_fkey
  foreign key (rack)
  references infrastructure."Rack" (id)
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
