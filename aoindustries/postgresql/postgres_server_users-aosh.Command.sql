select aosh.add_command(
  'add_postgres_server_user',
  'postgresql',
  'postgres_server_users',
  'adds a PostgreSQL user to a server',
  '<i>username</i> <i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'disable_postgres_server_user',
  'postgresql',
  'postgres_server_users',
  'disables a PostgreSQL account on one server',
  '<i>username</i> <i>postgres_server</i> <i>ao_server</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_postgres_server_user',
  'postgresql',
  'postgres_server_users',
  'enables a PostgreSQL account on one server',
  '<i>username</i> <i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_postgres_server_user_password_set',
  'postgresql',
  'postgres_server_users',
  'determines if a PostgreSQL account password is set',
  '<i>username</i> <i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_postgres_server_user',
  'postgresql',
  'postgres_server_users',
  'removes a PostgreSQL user from a server',
  '<i>username</i> <i>postgres_server</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_postgres_server_user_password',
  'postgresql',
  'postgres_server_users',
  'sets the password for a PostgreSQL user on one server',
  '<i>username</i> <i>postgres_server</i> <i>ao_server</i> <i>password</i>',
  '1.0a100',
  null
);
