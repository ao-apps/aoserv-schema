select aosh.add_command(
  'check_email_address',
  'email',
  'email_addresses',
  'checks the format of an email address',
  '<i>address</i> [<i>...</i>]',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_email_address',
  'email',
  'email_addresses',
  'removes an email address and all associated resources',
  '<i>address</i> <i>ao_server> [<i>...</i>]',
  '1.0a100',
  null
);
