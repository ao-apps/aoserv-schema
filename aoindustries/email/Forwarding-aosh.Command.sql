select aosh.add_command(
  'add_email_forwarding',
  'email',
  'email_forwarding',
  'attaches a forwarding address to an email address',
  '<i>from_address</i> <i>ao_server</i> <i>to_address</i> [<i>from_address</i> <i>ao_server</i> <i>to_address</i>]...',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_email_forwarding',
  'email',
  'email_forwarding',
  'checks the format of a the destination for email forwarding',
  '<i>from_address</i> <i>to_address</i> [<i>from_address</i> <i>to_address</i>]...',
  '1.0a100',
  '1.80'
);
select aosh.add_command(
  'remove_email_forwarding',
  'email',
  'email_forwarding',
  'detaches a forwarding address from an email address',
  '<i>from_address</i> <i>ao_server</i> <i>to_address</i>',
  '1.0a100',
  null
);
