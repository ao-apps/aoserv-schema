alter table linux."LinuxServerDaemonHost"
  add constraint ao_server_fkey
  foreign key (ao_server)
  references linux."LinuxServer" (server)
  on delete restrict
  on update cascade
;
