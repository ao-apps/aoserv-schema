select aosh.add_command(
  'add_interbase_server_user',
  'interbase',
  'interbase_server_users',
  'grants an InterBase account access to a server',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'disable_interbase_server_user',
  'interbase',
  'interbase_server_users',
  'disables an InterBase account on one server',
  '<i>username</i> <i>ao_server</i> <i>reason</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'enable_interbase_server_user',
  'interbase',
  'interbase_server_users',
  'enables an InterBase account on one server',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'is_interbase_server_user_password_set',
  'interbase',
  'interbase_server_users',
  'determines if an InterBase account password is set',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'remove_interbase_server_user',
  'interbase',
  'interbase_server_users',
  'revokes an InterBase account''s access to a server',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_interbase_server_user_password',
  'interbase',
  'interbase_server_users',
  'sets the password for an InterBase accounts access to one server',
  '<i>username</i> <i>ao_server</i> <i>password</i>',
  '1.0a100',
  '1.30'
);
