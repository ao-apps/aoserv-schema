select aosh.add_command(
  'add_username',
  'account',
  'usernames',
  'adds a new username',
  '<i>package</i> <i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'are_username_passwords_set',
  'account',
  'usernames',
  'determines if <b>all</b>, <b>some</b>, or <b>none</b> of the passwords for a username are set',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_username',
  'account',
  'usernames',
  'checks the format of a username',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_username_password',
  'account',
  'usernames',
  'checks the format of a password for a Username',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'disable_username',
  'account',
  'usernames',
  'disables a username and accounts using it, except its business administrator',
  '<i>username</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_username',
  'account',
  'usernames',
  'enables a username and accounts using it',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_username_available',
  'account',
  'usernames',
  'checks the availability of a username',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_username',
  'account',
  'usernames',
  'removes a username from the system',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_username_password',
  'account',
  'usernames',
  'sets the password for a Username on all services',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
