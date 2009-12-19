alter table mysql_users
  add constraint mysql_server_fkey
  foreign key (mysql_server)
  references mysql_servers (ao_server_resource)
  on delete restrict
  on update cascade
;
alter table mysql_users
  add constraint username_fkey
  foreign key (username)
  references usernames (username)
  on delete restrict
  on update cascade
;
alter table mysql_users
  add constraint disable_log_fkey
  foreign key (disable_log)
  references disable_log (pkey)
  on delete restrict
  on update cascade
;
