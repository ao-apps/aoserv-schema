alter table backup_data
  add constraint backup_partition_fkey
  foreign key (backup_partition)
  references backup_partitions (pkey)
  on delete cascade
  on update cascade
;
