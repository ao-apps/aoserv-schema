alter table httpd_sites
  add constraint ao_server_fkey
  foreign key (ao_server)
  references ao_servers (server)
  on delete restrict
  on update cascade
;
alter table httpd_sites
  add constraint package_fkey
  foreign key (package)
  references packages (name)
  on delete restrict
  on update cascade
;
alter table httpd_sites
  add constraint linux_account_fkey
  foreign key (linux_account)
  references linux_accounts (username)
  on delete restrict
  on update cascade
;
alter table httpd_sites
  add constraint linux_group_fkey
  foreign key (linux_group)
  references linux_groups (name)
  on delete restrict
  on update cascade
;
alter table httpd_sites
  add constraint config_backup_level_fkey
  foreign key (config_backup_level)
  references backup_levels (level)
  on delete restrict
  on update cascade
;
alter table httpd_sites
  add constraint config_backup_retention_fkey
  foreign key (config_backup_retention)
  references backup_retentions (days)
  on delete restrict
  on update cascade
;
alter table httpd_sites
  add constraint file_backup_level_fkey
  foreign key (file_backup_level)
  references backup_levels (level)
  on delete restrict
  on update cascade
;
alter table httpd_sites
  add constraint file_backup_retention_fkey
  foreign key (file_backup_retention)
  references backup_retentions (days)
  on delete restrict
  on update cascade
;
alter table httpd_sites
  add constraint ftp_backup_level_fkey
  foreign key (ftp_backup_level)
  references backup_levels (level)
  on delete restrict
  on update cascade
;
alter table httpd_sites
  add constraint ftp_backup_retention_fkey
  foreign key (ftp_backup_retention)
  references backup_retentions (days)
  on delete restrict
  on update cascade
;
alter table httpd_sites
  add constraint log_backup_level_fkey
  foreign key (log_backup_level)
  references backup_levels (level)
  on delete restrict
  on update cascade
;
alter table httpd_sites
  add constraint log_backup_retention_fkey
  foreign key (log_backup_retention)
  references backup_retentions (days)
  on delete restrict
  on update cascade
;
alter table httpd_sites
  add constraint disable_log_fkey
  foreign key (disable_log)
  references disable_log (pkey)
  on delete restrict
  on update cascade
;
