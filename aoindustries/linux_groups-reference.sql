alter table linux_groups
  add constraint linux_group_type_fkey
  foreign key (linux_group_type, ao_server_resource)
  references ao_server_resources (resource_type, resource)
  on delete restrict
  on update cascade
;
alter table linux_groups
  add constraint linux_group_type_fkey2
  foreign key (linux_group_type)
  references linux_group_types (resource_type)
  on delete restrict
  on update cascade
;
alter table linux_groups
  add constraint accounting_fkey
  foreign key (accounting, ao_server_resource)
  references ao_server_resources (accounting, resource)
  on delete restrict
  on update cascade
;
alter table linux_groups
  add constraint accounting_fkey2
  foreign key (accounting, group_name)
  references group_names (accounting, group_name)
  on delete restrict
  on update cascade
;
alter table linux_groups
  add constraint ao_server_fkey
  foreign key (ao_server, ao_server_resource)
  references ao_server_resources (ao_server, resource)
  on delete restrict
  on update cascade
;
