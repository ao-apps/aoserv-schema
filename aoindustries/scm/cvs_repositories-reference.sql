alter table cvs_repositories
  add constraint linux_server_account_fkey
  foreign key (linux_server_account)
  references linux_server_accounts (pkey)
  on delete restrict
  on update cascade
;
alter table cvs_repositories
  add constraint linux_server_group_fkey
  foreign key (linux_server_group)
  references linux."LinuxGroupAoServer" (pkey)
  on delete restrict
  on update cascade
;
alter table cvs_repositories
  add constraint disable_log_fkey
  foreign key (disable_log)
  references account."DisableLog" (pkey)
  on delete restrict
  on update cascade
;
