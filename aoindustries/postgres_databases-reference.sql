alter table postgres_databases
  add constraint postgres_server_fkey
  foreign key (postgres_server)
  references postgres_servers (pkey)
  on delete restrict
  on update cascade
;
alter table postgres_databases
  add constraint datdba_fkey
  foreign key (datdba)
  references postgres_server_users (pkey)
  on delete restrict
  on update cascade
;
alter table postgres_databases
  add constraint encoding_fkey
  foreign key (encoding)
  references postgres_encodings (pkey)
  on delete restrict
  on update cascade
;
alter table postgres_databases
  add constraint backup_level_fkey
  foreign key (backup_level)
  references backup_levels (level)
  on delete restrict
  on update cascade
;
alter table postgres_databases
  add constraint backup_retention_fkey
  foreign key (backup_retention)
  references backup_retentions (days)
  on delete restrict
  on update cascade
;
