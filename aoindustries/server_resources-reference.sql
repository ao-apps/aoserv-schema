alter table server_resources
  add constraint resource_type_fkey
  foreign key (resource_type, resource)
  references resources (resource_type, pkey)
  on delete restrict
  on update cascade
;
alter table server_resources
  add constraint accounting_fkey
  foreign key (accounting, resource)
  references resources (accounting, pkey)
  on delete restrict
  on update cascade
;
alter table server_resources
  add constraint server_fkey
  foreign key (server)
  references servers (resource)
  on delete restrict
  on update cascade
;
alter table server_resources
  add constraint business_servers_fkey
  foreign key (accounting, server)
  references business_servers (accounting, server)
  on delete restrict
  on update cascade
;
