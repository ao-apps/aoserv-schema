select aosh.add_command(
  'get_backup_data',
  'backup',
  'backup_data',
  'gets the contents of a backup data set',
  '<i>pkey</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'remove_unused_backup_data',
  'backup',
  'backup_data',
  'removes backup data that if no longer referenced',
  '<i>pkey</i> [...]',
  '1.0a100',
  '1.0a108'
);
