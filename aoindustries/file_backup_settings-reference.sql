alter table file_backup_settings
  add constraint server_fkey
  foreign key (server)
  references servers (pkey)
  on delete restrict
  on update cascade
;
alter table file_backup_settings
  add constraint package_fkey
  foreign key (package)
  references packages (pkey)
  on delete restrict
  on update cascade
;
alter table file_backup_settings
  add constraint backup_level_fkey
  foreign key (backup_level)
  references backup_levels (level)
  on delete restrict
  on update cascade
;
alter table file_backup_settings
  add constraint backup_retention_fkey
  foreign key (backup_retention)
  references backup_retentions (days)
  on delete restrict
  on update cascade
;
