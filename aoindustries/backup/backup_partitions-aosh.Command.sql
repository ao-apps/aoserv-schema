select aosh.add_command(
  'get_backup_partition_total_size',
  'backup',
  'backup_partitions',
  'gets the total size of a backup partition',
  '<i>ao_server</i> <i>path</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'get_backup_partition_used_size',
  'backup',
  'backup_partitions',
  'gets the disk space used on a backup partition',
  '<i>ao_server</i> <i>path</i>',
  '1.0a100',
  null
);
