alter table mysql."DatabaseUser"
  add constraint mysql_database_fkey
  foreign key (mysql_database)
  references mysql."Database" (pkey)
  on delete restrict
  on update cascade
;
alter table mysql."DatabaseUser"
  add constraint mysql_server_user_fkey
  foreign key (mysql_server_user)
  references mysql."UserServer" (pkey)
  on delete restrict
  on update cascade
;
