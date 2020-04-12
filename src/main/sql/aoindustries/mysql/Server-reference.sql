alter table mysql."Server"
  add constraint bind_fkey
  foreign key (bind)
  references net."Bind" (id)
  on delete restrict
  on update cascade
;
alter table mysql."Server"
  add constraint ao_server_fkey
  foreign key (ao_server)
  references linux."Server" (server)
  on delete restrict
  on update cascade
;
alter table mysql."Server"
  add constraint version_fkey
  foreign key (version)
  references distribution."SoftwareVersion" (id)
  on delete restrict
  on update cascade
;
