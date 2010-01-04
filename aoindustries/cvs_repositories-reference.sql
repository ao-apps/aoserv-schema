alter table cvs_repositories
  add constraint linux_server_account_fkey
  foreign key (linux_server_account)
  references linux_accounts (ao_server_resource)
  on delete restrict
  on update cascade
;
alter table cvs_repositories
  add constraint linux_server_group_fkey
  foreign key (linux_server_group)
  references linux_groups (ao_server_resource)
  on delete restrict
  on update cascade
;
alter table cvs_repositories
  add constraint disable_log_fkey
  foreign key (disable_log)
  references disable_log (pkey)
  on delete restrict
  on update cascade
;
