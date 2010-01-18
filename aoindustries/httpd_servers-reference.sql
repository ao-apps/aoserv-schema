alter table httpd_servers
  add constraint resource_type_fkey
  foreign key (resource_type, ao_server_resource)
  references ao_server_resources (resource_type, resource)
  on delete restrict
  on update cascade
;
alter table httpd_servers
  add constraint ao_server_fkey
  foreign key (ao_server, ao_server_resource)
  references ao_server_resources (ao_server, resource)
  on delete restrict
  on update cascade
;
alter table httpd_servers
  add constraint ao_server_fkey2
  foreign key (ao_server, linux_account_group)
  references linux_account_groups (ao_server, pkey)
  on delete restrict
  on update cascade
;
alter table httpd_servers
  add constraint mod_php_version_fkey
  foreign key (mod_php_version)
  references technology_versions (pkey)
  on delete restrict
  on update cascade
;
