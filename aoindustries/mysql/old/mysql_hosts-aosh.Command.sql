select aosh.add_command(
  'wait_for_mysql_host_rebuild',
  'mysql',
  'mysql_hosts',
  'waits for any pending or current MySQL host permission rebuilds to complete',
  '<i>ao_server</i>',
  '1.0a100',
  '1.3'
);
