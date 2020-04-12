select aosh.add_command(
  'add_email_list',
  'email',
  'email_lists',
  'adds a new email list',
  '<i>ao_server</i> <i>path</i> <i>username</i> <i>group</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_email_list_path',
  'email',
  'email_lists',
  'checks the format of an email list path',
  '<i>path</i> [<i>...</i>]',
  '1.0a100',
  '1.80.1'
);
select aosh.add_command(
  'check_email_list_path',
  'email',
  'email_lists',
  'checks the format of an email list path',
  '<i>ao_server</i> <i>path</i>',
  '1.80.2',
  null
);
select aosh.add_command(
  'disable_email_list',
  'email',
  'email_lists',
  'disables an email list',
  '<i>path</i> <i>ao_server</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_email_list',
  'email',
  'email_lists',
  'enables an email list',
  '<i>path</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'get_email_list',
  'email',
  'email_lists',
  'gets the list of addresses for a list',
  '<i>path</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_email_list',
  'email',
  'email_lists',
  'removes an email list',
  '<i>path</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_email_list',
  'email',
  'email_lists',
  'sets the list of addresses for a list',
  '<i>path</i> <i>ao_server</i> <i>list_contents</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_email_list_backup_retention',
  'email',
  'email_lists',
  'sets the backup retention for a list',
  '<i>path</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
