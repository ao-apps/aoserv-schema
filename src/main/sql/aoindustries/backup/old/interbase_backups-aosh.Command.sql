select aosh.add_command(
  'get_interbase_backup',
  'backup',
  'interbase_backups',
  'retrieves the contents of an InterBase backup from a backup server',
  '<i>pkey</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'remove_interbase_backup',
  'backup',
  'interbase_backups',
  'removes the contents of an InterBase backup from the backup servers',
  '<i>pkey</i>',
  '1.0a100',
  '1.30'
);
