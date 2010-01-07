alter table httpd_sites
  add constraint resource_type_fkey
  foreign key (resource_type, ao_server_resource)
  references ao_server_resources (resource_type, resource)
  on delete restrict
  on update cascade
;
alter table httpd_sites
  add constraint accounting_fkey
  foreign key (accounting, ao_server_resource)
  references ao_server_resources (accounting, resource)
  on delete restrict
  on update cascade
;
alter table httpd_sites
  add constraint ao_server_fkey
  foreign key (ao_server, ao_server_resource)
  references ao_server_resources (ao_server, resource)
  on delete restrict
  on update cascade
;
alter table httpd_sites
  add constraint ao_server_fkey2
  foreign key (ao_server, linux_account_group)
  references linux_account_groups (ao_server, pkey)
  on delete restrict
  on update cascade
;
alter table httpd_sites
  add constraint linux_group_account_fkey
  foreign key (linux_account_type, linux_account_group)
  references linux_account_groups (linux_account_type, pkey)
  on delete restrict
  on update cascade
;
