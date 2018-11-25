select aosh.add_command(
  'add_backup_server',
  'server',
  'servers',
  'adds a new backup server',
  '<i>hostname</i> <i>farm</i> <i>owner</i> <i>description</i> <i>architecture</i> <i>backup_hour</i> <i>os_type</i> <i>os_version</i> <i>username</i> <i>password</i> <i>contact_phone</i> <i>contact_email</i>',
  '1.0a102',
  '1.0a107'
);
select aosh.add_command(
  'add_backup_server',
  'server',
  'servers',
  'adds a new backup server',
  '<i>hostname</i> <i>farm</i> <i>owner</i> <i>description</i> <i>backup_hour</i> <i>os_type</i> <i>os_version</i> <i>architecture</i> <i>username</i> <i>password</i> <i>contact_phone</i> <i>contact_email</i>',
  '1.0a108',
  null
);
