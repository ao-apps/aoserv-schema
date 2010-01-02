alter table postgres_users
  add constraint resource_type_fkey
  foreign key (resource_type, ao_server_resource)
  references ao_server_resources (resource_type, resource)
  on delete restrict
  on update cascade
;
alter table postgres_users
  add constraint accounting_fkey
  foreign key (accounting, ao_server_resource)
  references ao_server_resources (accounting, resource)
  on delete restrict
  on update cascade
;
alter table postgres_users
  add constraint accounting_fkey2
  foreign key (accounting, username)
  references usernames (accounting, username)
  on delete restrict
  on update cascade
;
alter table postgres_users
  add constraint ao_server_fkey
  foreign key (ao_server, ao_server_resource)
  references ao_server_resources (ao_server, resource)
  on delete restrict
  on update cascade
;
alter table postgres_users
  add constraint ao_server_fkey2
  foreign key (ao_server, postgres_server)
  references postgres_servers (ao_server, ao_server_resource)
  on delete restrict
  on update cascade
;
