select aosh.add_command(
  'add_mysql_server_user',
  'mysql',
  'mysql_server_users',
  'adds a MySQL user to a server',
  '<i>username</i> <i>ao_server</i> <i>host</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'add_mysql_server_user',
  'mysql',
  'mysql_server_users',
  'adds a MySQL user to a server',
  '<i>username</i> <i>mysql_server</i> <i>ao_server</i> <i>host</i>',
  '1.4',
  null
);
select aosh.add_command(
  'disable_mysql_server_user',
  'mysql',
  'mysql_server_users',
  'disables a MySQL account on one server',
  '<i>username</i> <i>ao_server</i> <i>reason</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'disable_mysql_server_user',
  'mysql',
  'mysql_server_users',
  'disables a MySQL account on one server',
  '<i>username</i> <i>mysql_server</i> <i>ao_server</i> <i>reason</i>',
  '1.4',
  null
);
select aosh.add_command(
  'enable_mysql_server_user',
  'mysql',
  'mysql_server_users',
  'enables a MySQL account on one server',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'enable_mysql_server_user',
  'mysql',
  'mysql_server_users',
  'enables a MySQL account on one server',
  '<i>username</i> <i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  null
);
select aosh.add_command(
  'is_mysql_server_user_password_set',
  'mysql',
  'mysql_server_users',
  'determines if a MySQL account password is set',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'is_mysql_server_user_password_set',
  'mysql',
  'mysql_server_users',
  'determines if a MySQL account password is set',
  '<i>username</i> <i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  null
);
select aosh.add_command(
  'remove_mysql_server_user',
  'mysql',
  'mysql_server_users',
  'removes a MySQL user from a server',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'remove_mysql_server_user',
  'mysql',
  'mysql_server_users',
  'removes a MySQL user from a server',
  '<i>username</i> <i>mysql_server</i> <i>ao_server</i>',
  '1.4',
  null
);
select aosh.add_command(
  'set_mysql_server_user_password',
  'mysql',
  'mysql_server_users',
  'sets the password for a MySQL user on one server',
  '<i>username</i> <i>ao_server</i> <i>password</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'set_mysql_server_user_password',
  'mysql',
  'mysql_server_users',
  'sets the password for a MySQL user on one server',
  '<i>username</i> <i>mysql_server</i> <i>ao_server</i> <i>password</i>',
  '1.4',
  null
);
