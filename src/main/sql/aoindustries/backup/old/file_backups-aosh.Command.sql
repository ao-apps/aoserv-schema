select aosh.add_command(
  'get_file_backup',
  'backup',
  'file_backups',
  'gets the contents of a file backup',
  '<i>pkey</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'remove_file_backup',
  'backup',
  'file_backups',
  'removes a backup copy of a file from the system',
  '<i>pkey</i>',
  '1.0a100',
  '1.30'
);
