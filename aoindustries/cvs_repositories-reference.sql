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
  references linux_server_groups (pkey)
  on delete restrict
  on update cascade
;
alter table cvs_repositories
  add constraint backup_level_fkey
  foreign key (backup_level)
  references backup_levels (level)
  on delete restrict
  on update cascade
;
alter table cvs_repositories
  add constraint backup_retention_fkey
  foreign key (backup_retention)
  references backup_retentions (days)
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
