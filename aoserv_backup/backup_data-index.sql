create index find_backup_data_ind on backup_data (
  md5_hi, md5_lo
);
create index find_by_partition_ind on backup_data (
  backup_partition
);
