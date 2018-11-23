alter table mysql."MysqlServerUser"
  add constraint username_fkey
  foreign key (username)
  references mysql."MysqlUser" (username)
  on delete restrict
  on update cascade
;
alter table mysql."MysqlServerUser"
  add constraint mysql_server_fkey
  foreign key (mysql_server)
  references mysql."MysqlServer" (net_bind)
  on delete restrict
  on update cascade
;
alter table mysql."MysqlServerUser"
  add constraint disable_log_fkey
  foreign key (disable_log)
  references account."DisableLog" (pkey)
  on delete restrict
  on update cascade
;
