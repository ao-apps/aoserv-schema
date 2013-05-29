alter table mysql_databases
  add constraint mysql_server_fkey
  foreign key (mysql_server)
  references mysql_servers (pkey)
  on delete restrict
  on update cascade
;
alter table mysql_databases
  add constraint package_fkey
  foreign key (package)
  references packages (name)
  on delete restrict
  on update cascade
;
