alter table mysql."MysqlDatabase"
  add constraint mysql_server_fkey
  foreign key (mysql_server)
  references mysql."MysqlServer" (net_bind)
  on delete restrict
  on update cascade
;
alter table mysql."MysqlDatabase"
  add constraint package_fkey
  foreign key (package)
  references billing."Package" ("name")
  on delete restrict
  on update cascade
;
