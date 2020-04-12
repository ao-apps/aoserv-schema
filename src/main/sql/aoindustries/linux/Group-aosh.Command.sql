select aosh.add_command(
  'add_linux_group',
  'linux',
  'linux_groups',
  'adds a new Linux group',
  '<i>group</i> <i>package</i> <i>type</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_linux_group_name',
  'linux',
  'linux_groups',
  'checks validity of a Linux group name',
  '<i>groupname</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_linux_group_name_available',
  'linux',
  'linux_groups',
  'check availability Linux group name',
  '<i>groupname</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_linux_group',
  'linux',
  'linux_groups',
  'removes a Linux group',
  '<i>group</i>',
  '1.0a100',
  null
);
