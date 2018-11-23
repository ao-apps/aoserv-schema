select aosh.add_command(
  'add_mysql_database',
  'mysql',
  'mysql_databases',
  'adds a new MySQL database',
  '<i>database_name</i> <i>ao_server</i> <i>package</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'add_mysql_database',
  'mysql',
  'mysql_databases',
  'adds a new MySQL database',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i> <i>package</i>',
  '1.4',
  null
);
select aosh.add_command(
  'backup_mysql_database',
  'mysql',
  'mysql_databases',
  'stores a compressed dump of a MySQL database in the backup system',
  '<i>database_name</i> <i>ao_server</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'backup_mysql_database',
  'mysql',
  'mysql_databases',
  'stores a compressed dump of a MySQL database in the backup system',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  '1.30'
);
select aosh.add_command(
  'check_mysql_database_name',
  'mysql',
  'mysql_databases',
  'checks the format of a MySQL database name',
  '<i>database_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'dump_mysql_database',
  'mysql',
  'mysql_databases',
  'dumps the contents of a MySQL database',
  '<i>database_name</i> <i>ao_server</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'dump_mysql_database',
  'mysql',
  'mysql_databases',
  'dumps the contents of a MySQL database',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  '1.80'
);
select aosh.add_command(
  'dump_mysql_database',
  'mysql',
  'mysql_databases',
  'dumps the contents of a MySQL database',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i> <i>gzip</i>',
  '1.80.0',
  null
);
select aosh.add_command(
  'generate_mysql_database_name',
  'mysql',
  'mysql_databases',
  'generates a unique MySQL database name',
  '<i>template_base</i> <i>template_added</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_mysql_database_name_available',
  'mysql',
  'mysql_databases',
  'determines if a MySQL database name is available',
  '<i>database_name</i> <i>ao_server</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'is_mysql_database_name_available',
  'mysql',
  'mysql_databases',
  'determines if a MySQL database name is available',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  null
);
select aosh.add_command(
  'remove_mysql_database',
  'mysql',
  'mysql_databases',
  'removes a MySQL database',
  '<i>database_name</i> <i>ao_server</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'remove_mysql_database',
  'mysql',
  'mysql_databases',
  'removes a MySQL database',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  null
);
select aosh.add_command(
  'set_mysql_database_backup_retention',
  'mysql',
  'mysql_databases',
  'sets the backup retention for a MySQL database',
  '<i>database_name</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'set_mysql_database_backup_retention',
  'mysql',
  'mysql_databases',
  'sets the backup retention for a MySQL database',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.4',
  '1.30'
);
select aosh.add_command(
  'wait_for_mysql_database_rebuild',
  'mysql',
  'mysql_databases',
  'waits for any pending or current MySQL database config rebuilds to complete',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
