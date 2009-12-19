alter table ao_server_resources
  add constraint resource_type_fkey
  foreign key (resource_type, resource)
  references resources (resource_type, pkey)
  on delete restrict
  on update cascade
;
alter table ao_server_resources
  add constraint accounting_fkey
  foreign key (accounting, resource)
  references resources (accounting, pkey)
  on delete restrict
  on update cascade
;
alter table ao_server_resources
  add constraint ao_server_fkey
  foreign key (ao_server)
  references ao_servers (server)
  on delete restrict
  on update cascade
;
alter table ao_server_resources
  add constraint business_servers_fkey
  foreign key (accounting, ao_server)
  references business_servers (accounting, server)
  on delete restrict
  on update cascade
;
