alter table mysql_databases
  add constraint resource_type_fkey
  foreign key (resource_type, ao_server_resource)
  references ao_server_resources (resource_type, resource)
  on delete restrict
  on update cascade
;
alter table mysql_databases
  add constraint ao_server_fkey
  foreign key (ao_server, ao_server_resource)
  references ao_server_resources (ao_server, resource)
  on delete restrict
  on update cascade
;
alter table mysql_databases
  add constraint ao_server_fkey2
  foreign key (ao_server, mysql_server)
  references mysql_servers (ao_server, ao_server_resource)
  on delete restrict
  on update cascade
;
