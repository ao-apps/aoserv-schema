alter table private_ftp_servers
  add constraint resource_type_fkey
  foreign key (resource_type, ao_server_resource)
  references ao_server_resources (resource_type, resource)
  on delete restrict
  on update cascade
;
alter table private_ftp_servers
  add constraint accounting_fkey
  foreign key (accounting, ao_server_resource)
  references ao_server_resources (accounting, resource)
  on delete restrict
  on update cascade
;
alter table private_ftp_servers
  add constraint net_bind_accounting_fkey
  foreign key (accounting, net_bind)
  references net_binds (accounting, pkey)
  on delete restrict
  on update cascade
;
alter table private_ftp_servers
  add constraint ao_server_fkey
  foreign key (ao_server, ao_server_resource)
  references ao_server_resources (ao_server, resource)
  on delete restrict
  on update cascade
;
alter table private_ftp_servers
  add constraint net_bind_server_fkey
  foreign key (ao_server, net_bind)
  references net_binds (server, pkey)
  on delete restrict
  on update cascade
;
alter table private_ftp_servers
  add constraint linux_account_group_ao_server_fkey
  foreign key (ao_server, linux_account_group)
  references linux_account_groups (ao_server, pkey)
  on delete restrict
  on update cascade
;
alter table private_ftp_servers
  add constraint linux_account_group_linux_account_type_fkey
  foreign key (linux_account_type, linux_account_group)
  references linux_account_groups (linux_account_type, pkey)
  on delete restrict
  on update cascade
;
