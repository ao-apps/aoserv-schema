select aosh.add_command(
  'add_email_list_address',
  'email',
  'email_list_addresses',
  'attaches an email address to an email list',
  '<i>address</i> <i>path</i> <i>ao_server</i> [<i>address</i> <i>path</i> <i>ao_server</i>]...',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_email_list_address',
  'email',
  'email_list_addresses',
  'detaches an email address from an email list',
  '<i>address</i> <i>path</i> <i>ao_server</i>',
  '1.0a100',
  null
);
