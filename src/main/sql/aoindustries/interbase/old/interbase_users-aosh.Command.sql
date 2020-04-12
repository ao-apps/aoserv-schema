select aosh.add_command(
  'add_interbase_user',
  'interbase',
  'interbase_users',
  'adds an InterBase user to the system',
  '<i>username</i> {""|<i>first_name</i>} {""|<i>middle_name</i>} {""|<i>last_name</i>}',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'are_interbase_user_passwords_set',
  'interbase',
  'interbase_users',
  'determines if <b>all</b>, <b>some</b>, or <b>none</b> of the passwords for an InterBase account are set',
  '<i>username</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'check_interbase_password',
  'interbase',
  'interbase_users',
  'checks the strength of a password that will be used for an InterBase account',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'check_interbase_username',
  'interbase',
  'interbase_users',
  'determines if a username may be used for an InterBase account',
  '<i>username</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'disable_interbase_user',
  'interbase',
  'interbase_users',
  'disables an InterBase account, including its access to all database servers',
  '<i>username</i> <i>reason</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'enable_interbase_user',
  'interbase',
  'interbase_users',
  'enables an InterBase account, including its access to all database servers',
  '<i>username</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'remove_interbase_user',
  'interbase',
  'interbase_users',
  'removes an InterBase user from the system',
  '<i>username</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_interbase_user_password',
  'interbase',
  'interbase_users',
  'sets the password used to access an InterBase user',
  '<i>username</i> {""|<i>password</i>}',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'wait_for_interbase_rebuild',
  'interbase',
  'interbase_users',
  'waits for any pending or processing InterBase server updates to complete',
  '<i>ao_server</i>',
  '1.0a100',
  '1.30'
);
