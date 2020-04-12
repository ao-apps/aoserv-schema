alter table linux."GroupServer"
  add constraint name_fkey
  foreign key ("name")
  references linux."Group" ("name")
  on delete restrict
  on update cascade
;
alter table linux."GroupServer"
  add constraint ao_server_fkey
  foreign key (ao_server)
  references linux."Server" (server)
  on delete restrict
  on update cascade
;
