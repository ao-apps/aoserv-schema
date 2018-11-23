select aosh.add_command(
  'add_mysql_user',
  'mysql',
  'mysql_users',
  'adds a MySQL user to the system',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'are_mysql_user_passwords_set',
  'mysql',
  'mysql_users',
  'determines if <b>all</b>, <b>some</b>, or <b>none</b> of the passwords for a MySQL account are set',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_mysql_password',
  'mysql',
  'mysql_users',
  'checks the format of a password for a MySQL user',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_mysql_username',
  'mysql',
  'mysql_users',
  'checks the format of a MySQL username',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'disable_mysql_user',
  'mysql',
  'mysql_users',
  'disables a MySQL account on all servers',
  '<i>username</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_mysql_user',
  'mysql',
  'mysql_users',
  'enables a MySQL account on all servers',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_mysql_user',
  'mysql',
  'mysql_users',
  'removes a MySQL user from the system',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_mysql_user_password',
  'mysql',
  'mysql_users',
  'sets the password for a MySQL user on all servers',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'wait_for_mysql_user_rebuild',
  'mysql',
  'mysql_users',
  'waits for any pending or current MySQL user config rebuilds to complete',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
