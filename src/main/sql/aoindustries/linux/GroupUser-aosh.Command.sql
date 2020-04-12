select aosh.add_command(
  'add_linux_group_account',
  'linux',
  'linux_group_accounts',
  'grants a Linux account access to a Linux group',
  '<i>group</i> <i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_linux_group_account',
  'linux',
  'linux_group_accounts',
  'revokes access of a Linux account to a Linux group',
  '<i>group</i> <i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_primary_linux_group_account',
  'linux',
  'linux_group_accounts',
  'sets the primary Linux group associated with a Linux account',
  '<i>group</i> <i>username</i>',
  '1.0a100',
  null
);
