alter table mysql_servers
  add constraint ao_server_fkey
  foreign key (ao_server)
  references ao_servers (server)
  on delete restrict
  on update cascade
;
alter table mysql_servers
  add constraint version_fkey
  foreign key (version)
  references technology_versions (pkey)
  on delete restrict
  on update cascade
;
alter table mysql_servers
  add constraint net_bind_fkey
  foreign key (net_bind)
  references net_binds (pkey)
  on delete restrict
  on update cascade
;
