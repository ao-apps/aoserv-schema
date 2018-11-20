select aosh.add_command(
  'check_mysql_server_name',
  'mysql',
  'mysql_servers',
  'checks the format of a MySQL server name',
  '<i>name</i>',
  '1.4',
  null
);
select aosh.add_command(
  'is_mysql_server_name_available',
  'mysql',
  'mysql_servers',
  'determines if a MySQL server name is available',
  '<i>server_name</i> <i>ao_server</i>',
  '1.4',
  null
);
select aosh.add_command(
  'restart_mysql',
  'mysql',
  'mysql_servers',
  'restarts the MySQL database server',
  '<i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  null
);
select aosh.add_command(
  'start_mysql',
  'mysql',
  'mysql_servers',
  'starts the MySQL database server',
  '<i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  null
);
select aosh.add_command(
  'stop_mysql',
  'mysql',
  'mysql_servers',
  'stops the MySQL database server',
  '<i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  null
);
select aosh.add_command(
  'wait_for_mysql_server_rebuild',
  'mysql',
  'mysql_servers',
  'waits for any pending or current database server config rebuilds to complete',
  '<i>ao_server</i>',
  '1.4',
  null
);
