alter table file_backups
  add constraint server_fkey
  foreign key (server)
  references servers (pkey)
  on delete restrict
  on update cascade
;
alter table file_backups
  add constraint file_path_fkey
  foreign key (file_path)
  references file_paths (pkey)
  on delete restrict
  on update cascade
;
alter table file_backups
  add constraint device_fkey
  foreign key (device)
  references file_backup_devices (pkey)
  on delete restrict
  on update cascade
;
alter table file_backups
  add constraint package_fkey
  foreign key (package)
  references packages (pkey)
  on delete restrict
  on update cascade
;
alter table file_backups
  add constraint uid_fkey
  foreign key (uid)
  references linux_ids (id)
  on delete restrict
  on update cascade
;
alter table file_backups
  add constraint gid_fkey
  foreign key (gid)
  references linux_ids (id)
  on delete restrict
  on update cascade
;
alter table file_backups
  add constraint backup_data_fkey
  foreign key (backup_data)
  references backup_data (pkey)
  on delete cascade
  on update cascade
;
alter table file_backups
  add constraint backup_level_fkey
  foreign key (backup_level)
  references backup_levels (level)
  on delete restrict
  on update cascade
;
alter table file_backups
  add constraint backup_retention_fkey
  foreign key (backup_retention)
  references backup_retentions (days)
  on delete restrict
  on update cascade
;
