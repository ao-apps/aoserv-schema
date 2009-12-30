alter table mysql_db_users
  add constraint mysql_database_fkey
  foreign key (mysql_server, mysql_database)
  references mysql_databases (mysql_server, ao_server_resource)
  on delete restrict
  on update cascade
;
alter table mysql_db_users
  add constraint mysql_user_fkey
  foreign key (mysql_server, mysql_user)
  references mysql_users (mysql_server, ao_server_resource)
  on delete restrict
  on update cascade
;
