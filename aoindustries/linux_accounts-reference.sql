alter table linux_accounts
  add constraint linux_account_type_fkey
  foreign key (linux_account_type, ao_server_resource)
  references ao_server_resources (resource_type, resource)
  on delete restrict
  on update cascade
;
alter table linux_accounts
  add constraint linux_account_type_fkey2
  foreign key (linux_account_type)
  references linux_account_types (resource_type)
  on delete restrict
  on update cascade
;
alter table linux_accounts
  add constraint accounting_fkey
  foreign key (accounting, ao_server_resource)
  references ao_server_resources (accounting, resource)
  on delete restrict
  on update cascade
;
alter table linux_accounts
  add constraint accounting_fkey2
  foreign key (accounting, username)
  references usernames (accounting, username)
  on delete restrict
  on update cascade
;
alter table linux_accounts
  add constraint ao_server_fkey
  foreign key (ao_server, ao_server_resource)
  references ao_server_resources (ao_server, resource)
  on delete restrict
  on update cascade
;
alter table linux_accounts
  add constraint shell_fkey
  foreign key (shell)
  references shells ("path")
  on delete restrict
  on update cascade
;
