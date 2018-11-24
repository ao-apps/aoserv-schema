alter table mysql."MysqlServer"
  add constraint net_bind_fkey
  foreign key (net_bind)
  references net_binds (pkey)
  on delete restrict
  on update cascade
;
alter table mysql."MysqlServer"
  add constraint ao_server_fkey
  foreign key (ao_server)
  references server."AoServer" (server)
  on delete restrict
  on update cascade
;
alter table mysql."MysqlServer"
  add constraint version_fkey
  foreign key (version)
  references distribution."SoftwareVersion" (pkey)
  on delete restrict
  on update cascade
;
