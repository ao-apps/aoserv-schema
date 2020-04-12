select aosh.add_command(
  'get_mysql_backup',
  'backup',
  'mysql_backups',
  'gets the contents of a MySQL database backup',
  '<i>pkey</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'remove_mysql_backup',
  'backup',
  'mysql_backups',
  'removes a MySQL database backup from the system',
  '<i>pkey</i>',
  '1.0a100',
  '1.30'
);
