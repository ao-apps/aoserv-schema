alter table interbase_backups
  add constraint package_fkey
  foreign key (package)
  references packages (pkey)
  on delete restrict
  on update cascade
;
alter table interbase_backups
  add constraint ao_server_fkey
  foreign key (ao_server)
  references ao_servers (server)
  on delete restrict
  on update cascade
;
alter table interbase_backups
  add constraint backup_data_fkey
  foreign key (backup_data)
  references backup_data (pkey)
  on delete cascade
  on update cascade
;
alter table interbase_backups
  add constraint backup_level_fkey
  foreign key (backup_level)
  references backup_levels (level)
  on delete restrict
  on update cascade
;
alter table interbase_backups
  add constraint backup_retention_fkey
  foreign key (backup_retention)
  references backup_retentions (days)
  on delete restrict
  on update cascade
;
