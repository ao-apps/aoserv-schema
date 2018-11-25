alter table backup."FileReplication"
  add constraint server_fkey
  foreign key (server)
  references server."Server" (pkey)
  on delete restrict
  on update cascade
;
alter table backup."FileReplication"
  add constraint backup_partition_fkey
  foreign key (backup_partition)
  references backup."BackupPartition" (pkey)
  on delete restrict
  on update cascade
;
alter table backup."FileReplication"
  add constraint retention_fkey
  foreign key (retention)
  references backup."BackupRetention" (days)
  on delete restrict
  on update cascade
;
