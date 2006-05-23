alter table interbase_databases
  add constraint db_group_fkey
  foreign key (db_group)
  references interbase_db_groups (pkey)
  on delete restrict
  on update cascade
;
alter table interbase_databases
  add constraint datdba_fkey
  foreign key (datdba)
  references interbase_server_users (pkey)
  on delete restrict
  on update cascade
;
alter table interbase_databases
  add constraint backup_level_fkey
  foreign key (backup_level)
  references backup_levels (level)
  on delete restrict
  on update cascade
;
alter table interbase_databases
  add constraint backup_retention_fkey
  foreign key (backup_retention)
  references backup_retentions (days)
  on delete restrict
  on update cascade
;
