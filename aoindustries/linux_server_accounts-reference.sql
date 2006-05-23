alter table linux_server_accounts
  add constraint username_fkey
  foreign key (username)
  references linux_accounts (username)
  on delete restrict
  on update cascade
;
alter table linux_server_accounts
  add constraint ao_server_fkey
  foreign key (ao_server)
  references ao_servers (server)
  on delete restrict
  on update cascade
;
alter table linux_server_accounts
  add constraint uid_fkey
  foreign key (uid)
  references linux_ids (id)
  on delete restrict
  on update cascade
;
alter table linux_server_accounts
  add constraint cron_backup_level_fkey
  foreign key (cron_backup_level)
  references backup_levels (level)
  on delete restrict
  on update cascade
;
alter table linux_server_accounts
  add constraint cron_backup_retention_fkey
  foreign key (cron_backup_retention)
  references backup_retentions (days)
  on delete restrict
  on update cascade
;
alter table linux_server_accounts
  add constraint home_backup_level_fkey
  foreign key (home_backup_level)
  references backup_levels (level)
  on delete restrict
  on update cascade
;
alter table linux_server_accounts
  add constraint home_backup_retention_fkey
  foreign key (home_backup_retention)
  references backup_retentions (days)
  on delete restrict
  on update cascade
;
alter table linux_server_accounts
  add constraint inbox_backup_level_fkey
  foreign key (inbox_backup_level)
  references backup_levels (level)
  on delete restrict
  on update cascade
;
alter table linux_server_accounts
  add constraint inbox_backup_retention_fkey
  foreign key (inbox_backup_retention)
  references backup_retentions (days)
  on delete restrict
  on update cascade
;
alter table linux_server_accounts
  add constraint autoresponder_from_fkey
  foreign key (autoresponder_from)
  references linux_acc_addresses (pkey)
  on delete restrict
  on update cascade
;
alter table linux_server_accounts
  add constraint disable_log_fkey
  foreign key (disable_log)
  references disable_log (pkey)
  on delete restrict
  on update cascade
;
alter table linux_server_accounts
  add constraint sa_integration_mode_fkey
  foreign key (sa_integration_mode)
  references email_sa_integration_modes (name)
  on delete restrict
  on update cascade
;
