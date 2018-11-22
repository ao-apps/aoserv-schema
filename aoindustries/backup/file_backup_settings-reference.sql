alter table file_backup_settings
  add constraint replication_fkey
  foreign key (replication)
  references backup."FileReplication" (pkey)
  on delete restrict
  on update cascade
;
