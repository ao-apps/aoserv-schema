alter table failover_file_replications
  add constraint server_fkey
  foreign key (server)
  references servers (pkey)
  on delete restrict
  on update cascade
;
alter table failover_file_replications
  add constraint backup_partition_fkey
  foreign key (backup_partition)
  references backup_partitions (pkey)
  on delete restrict
  on update cascade
;
alter table failover_file_replications
  add constraint retention_fkey
  foreign key (retention)
  references backup_retentions (days)
  on delete restrict
  on update cascade
;
alter table failover_file_replications
  add constraint quota_gid_fkey
  foreign key (quota_gid)
  references linux_ids (id)
  on delete restrict
  on update cascade
;
