select aosh.add_command(
  'add_majordomo_server',
  'email',
  'majordomo_servers',
  'adds a new Majordomo server',
  '<i>domain</i> <i>ao_server</i> <i>linux_account</i> <i>linux_group</i> <i>version</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_majordomo_server',
  'email',
  'majordomo_servers',
  'remvoes a Majordomo server',
  '<i>domain</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_majordomo_server_backup_retention',
  'email',
  'majordomo_servers',
  'sets the backup retention for a Majordomo server',
  '<i>domain</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
