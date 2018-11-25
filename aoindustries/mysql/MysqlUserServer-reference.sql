alter table mysql."MysqlUserServer"
  add constraint username_fkey
  foreign key (username)
  references mysql."User" (username)
  on delete restrict
  on update cascade
;
alter table mysql."MysqlUserServer"
  add constraint mysql_server_fkey
  foreign key (mysql_server)
  references mysql."Server" (net_bind)
  on delete restrict
  on update cascade
;
alter table mysql."MysqlUserServer"
  add constraint disable_log_fkey
  foreign key (disable_log)
  references account."DisableLog" (pkey)
  on delete restrict
  on update cascade
;
