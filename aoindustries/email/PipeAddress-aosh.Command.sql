select aosh.add_command(
  'add_email_pipe_address',
  'email',
  'email_pipe_addresses',
  'attaches an email address to an email pipe',
  '<i>address</i> <i>pipe_pkey</i> [<i>address</i> <i>pipe_pkey</i>]...',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_email_pipe_address',
  'email',
  'email_pipe_addresses',
  'detaches an email address from an email pipe',
  '<i>address</i> <i>pipe_pkey</i>',
  '1.0a100',
  null
);
