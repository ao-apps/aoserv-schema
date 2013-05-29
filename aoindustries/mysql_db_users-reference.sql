alter table mysql_db_users
  add constraint mysql_database_fkey
  foreign key (mysql_database)
  references mysql_databases (pkey)
  on delete restrict
  on update cascade
;
alter table mysql_db_users
  add constraint mysql_server_user_fkey
  foreign key (mysql_server_user)
  references mysql_server_users (pkey)
  on delete restrict
  on update cascade
;
