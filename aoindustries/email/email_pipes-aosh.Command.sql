select aosh.add_command(
  'add_email_pipe',
  'email',
  'email_pipes',
  'adds a new email pipe',
  '<i>ao_server</i> <i>path</i> <i>package</i>',
  '1.0a100',
  '1.80'
);
select aosh.add_command(
  'add_email_pipe',
  'email',
  'email_pipes',
  'adds a new email pipe',
  '<i>ao_server</i> <i>command</i> <i>package</i>',
  '1.80.0',
  null
);
select aosh.add_command(
  'disable_email_pipe',
  'email',
  'email_pipes',
  'disables an email pipe',
  '<i>pkey</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_email_pipe',
  'email',
  'email_pipes',
  'enables an email pipe',
  '<i>pkey</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_email_pipe',
  'email',
  'email_pipes',
  'removes an email pipe',
  '<i>pipe_pkey</i>',
  '1.0a100',
  null
);
