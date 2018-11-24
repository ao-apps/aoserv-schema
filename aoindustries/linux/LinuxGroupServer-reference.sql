alter table linux."LinuxGroupServer"
  add constraint name_fkey
  foreign key ("name")
  references linux."LinuxGroup" ("name")
  on delete restrict
  on update cascade
;
alter table linux."LinuxGroupServer"
  add constraint ao_server_fkey
  foreign key (ao_server)
  references linux."LinuxServer" (server)
  on delete restrict
  on update cascade
;
