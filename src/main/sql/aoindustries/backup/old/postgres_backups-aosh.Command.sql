select aosh.add_command(
  'get_postgres_backup',
  'backup',
  'postgres_backups',
  'gets the contents of a PostgreSQL database backup',
  '<i>pkey</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'remove_postgres_backup',
  'backup',
  'postgres_backups',
  'removes a PostgreSQL database backup from the system',
  '<i>pkey</i>',
  '1.0a100',
  '1.30'
);
