alter table backup."FileReplication"
  add constraint server_fkey
  foreign key (server)
  references servers (pkey)
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
alter table backup."FileReplication"
  add constraint quota_gid_fkey
  foreign key (quota_gid)
  references linux_ids (id)
  on delete restrict
  on update cascade
;
