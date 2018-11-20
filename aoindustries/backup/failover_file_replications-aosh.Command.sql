select aosh.add_command(
  'get_failover_file_replication_activity',
  'backup',
  'failover_file_replications',
  'gets the most recently reported replication activity',
  '<i>from_server</i> <i>to_server</i> <i>path</i>',
  '1.76',
  null
);
