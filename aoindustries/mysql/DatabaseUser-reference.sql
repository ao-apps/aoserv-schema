alter table mysql."DatabaseUser"
  add constraint mysql_database_fkey
  foreign key (mysql_database)
  references mysql."Database" (id)
  on delete restrict
  on update cascade
;
alter table mysql."DatabaseUser"
  add constraint mysql_server_user_fkey
  foreign key (mysql_server_user)
  references mysql."UserServer" (id)
  on delete restrict
  on update cascade
;
