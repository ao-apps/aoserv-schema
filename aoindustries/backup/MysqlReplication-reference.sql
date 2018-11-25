alter table backup."MysqlReplication"
  add constraint ao_server_fkey
  foreign key (ao_server)
  references linux."Server" (server)
  on delete restrict
  on update cascade
;
alter table backup."MysqlReplication"
  add constraint replication_fkey
  foreign key (replication)
  references backup."FileReplication" (pkey)
  on delete restrict
  on update cascade
;
alter table backup."MysqlReplication"
  add constraint mysql_server_fkey
  foreign key (mysql_server)
  references mysql."Server" (net_bind)
  on delete restrict
  on update cascade
;
