alter table ao_server_daemon_hosts
  add constraint ao_server_fkey
  foreign key (ao_server)
  references ao_servers (server)
  on delete restrict
  on update cascade
;
