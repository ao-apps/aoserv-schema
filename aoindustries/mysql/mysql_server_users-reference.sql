alter table mysql_server_users
  add constraint username_fkey
  foreign key (username)
  references mysql_users (username)
  on delete restrict
  on update cascade
;
alter table mysql_server_users
  add constraint mysql_server_fkey
  foreign key (mysql_server)
  references mysql_servers (pkey)
  on delete restrict
  on update cascade
;
alter table mysql_server_users
  add constraint disable_log_fkey
  foreign key (disable_log)
  references account."DisableLog" (pkey)
  on delete restrict
  on update cascade
;
