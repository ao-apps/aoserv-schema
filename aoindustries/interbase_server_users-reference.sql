alter table interbase_server_users
  add constraint username_fkey
  foreign key (username)
  references interbase_users (username)
  on delete restrict
  on update cascade
;
alter table interbase_server_users
  add constraint ao_server_fkey
  foreign key (ao_server)
  references ao_servers (server)
  on delete restrict
  on update cascade
;
alter table interbase_server_users
  add constraint disable_log_fkey
  foreign key (disable_log)
  references disable_log (pkey)
  on delete restrict
  on update cascade
;
