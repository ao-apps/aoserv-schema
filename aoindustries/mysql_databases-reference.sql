alter table mysql_databases
  add constraint mysql_server_fkey
  foreign key (mysql_server)
  references mysql_servers (ao_server_resource)
  on delete restrict
  on update cascade
;
alter table mysql_databases
  add constraint accounting_fkey
  foreign key (accounting)
  references businesses (accounting)
  on delete restrict
  on update cascade
;
