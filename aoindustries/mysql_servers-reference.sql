alter table mysql_servers
  add constraint resource_type_fkey
  foreign key (resource_type, ao_server_resource)
  references ao_server_resources (resource_type, resource)
  on delete restrict
  on update cascade
;
alter table mysql_servers
  add constraint accounting_fkey
  foreign key (accounting, ao_server_resource)
  references ao_server_resources (accounting, resource)
  on delete restrict
  on update cascade
;
alter table mysql_servers
  add constraint ao_server_fkey
  foreign key (ao_server, ao_server_resource)
  references ao_server_resources (ao_server, resource)
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
  foreign key (ao_server, net_bind)
  references net_binds (server, pkey)
  on delete restrict
  on update cascade
;
