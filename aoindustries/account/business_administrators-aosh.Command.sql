select aosh.add_command(
  'add_business_administrator',
  'account',
  'business_administrators',
  'adds a business administrator to the list of people who may maintain the account',
  '<i>username</i> <i>full_name</i> {""|<i>title</i>} {""|<i>birthday</i>} <i>is_private</i> <i>work_phone</i> {""|<i>home_phone</i>} {""|<i>cell_phone</i>} {""|<i>fax</i>} <i>email_address</i> {""|<i>address1</i>} {""|<i>address2</i>} {""|<i>city</i>} {""|<i>state</i>} {""|<i>country</i>} {""|<i>zip</i>}',
  '1.0a100',
  '1.43'
);
select aosh.add_command(
  'add_business_administrator',
  'account',
  'business_administrators',
  'adds a business administrator to the list of people who may maintain the account',
  '<i>username</i> <i>full_name</i> {""|<i>title</i>} {""|<i>birthday</i>} <i>is_private</i> <i>work_phone</i> {""|<i>home_phone</i>} {""|<i>cell_phone</i>} {""|<i>fax</i>} <i>email_address</i> {""|<i>address1</i>} {""|<i>address2</i>} {""|<i>city</i>} {""|<i>state</i>} {""|<i>country</i>} {""|<i>zip</i>} <i>enable_email_support</i>',
  '1.44',
  null
);
select aosh.add_command(
  'check_business_administrator_password',
  'account',
  'business_administrators',
  'checks the format of a password for a business administrator',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_business_administrator_username',
  'account',
  'business_administrators',
  'checks the format of a business administrator username',
  '<i>username</i>',
  '1.0a100',
  '1.80'
);
select aosh.add_command(
  'crypt',
  'account',
  'business_administrators',
  'encrypts a password as used in Apache password lists',
  '<i>password</i> [<i>salt</i>]',
  '1.0a100',
  null
);
select aosh.add_command(
  'disable_business_administrator',
  'account',
  'business_administrators',
  'disables a business administrator account',
  '<i>username</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_business_administrator',
  'account',
  'business_administrators',
  'enables a business administrator account',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_business_administrator_password_set',
  'account',
  'business_administrators',
  'determines if a business administrator password is set',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_business_administrator',
  'account',
  'business_administrators',
  'removes the administrative access for a user',
  '<i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_business_administrator_password',
  'account',
  'business_administrators',
  'sets the password used for administrative access',
  '<i>username</i> <i>password</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_business_administrator_profile',
  'account',
  'business_administrators',
  'sets the profile associated with a business administrator',
  '<i>username</i> <i>full_name</i> {""|<i>title</i>} {""|<i>birthday</i>} <i>is_private</i> <i>work_phone</i> {""|<i>home_phone</i>} {""|<i>cell_phone</i>} {""|<i>fax</i>} <i>email_address</i> {""|<i>address1</i>} {""|<i>address2</i>} {""|<i>city</i>} {""|<i>state</i>} {""|<i>country</i>} {""|<i>zip</i>}',
  '1.0a100',
  null
);
