alter table linux_account_groups
  add constraint linux_account_fkey
  foreign key (linux_account_type, linux_account)
  references linux_accounts (linux_account_type, ao_server_resource)
  on delete restrict
  on update cascade
;
alter table linux_account_groups
  add constraint linux_account_ao_server_fkey
  foreign key (ao_server, linux_account)
  references linux_accounts (ao_server, ao_server_resource)
  on delete restrict
  on update cascade
;
alter table linux_account_groups
  add constraint linux_group_fkey
  foreign key (linux_group_type, linux_group)
  references linux_groups (linux_group_type, ao_server_resource)
  on delete restrict
  on update cascade
;
alter table linux_account_groups
  add constraint linux_group_ao_server_fkey
  foreign key (ao_server, linux_group)
  references linux_groups (ao_server, ao_server_resource)
  on delete restrict
  on update cascade
;
alter table linux_account_groups
  add constraint group_name_fkey
  foreign key (group_name, linux_group)
  references linux_groups (group_name, ao_server_resource)
  on delete restrict
  on update cascade
;
