alter table mysql."MysqlDatabaseUser"
  add constraint mysql_database_fkey
  foreign key (mysql_database)
  references mysql."MysqlDatabase" (pkey)
  on delete restrict
  on update cascade
;
alter table mysql."MysqlDatabaseUser"
  add constraint mysql_server_user_fkey
  foreign key (mysql_server_user)
  references mysql."MysqlServerUser" (pkey)
  on delete restrict
  on update cascade
;
