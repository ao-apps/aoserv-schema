alter table postgres_server_users
  add constraint username_fkey
  foreign key (username)
  references postgresql."User" (username)
  on delete restrict
  on update cascade
;
alter table postgres_server_users
  add constraint postgres_server_fkey
  foreign key (postgres_server)
  references postgresql."Server" (pkey)
  on delete restrict
  on update cascade
;
alter table postgres_server_users
  add constraint disable_log_fkey
  foreign key (disable_log)
  references account."DisableLog" (pkey)
  on delete restrict
  on update cascade
;
