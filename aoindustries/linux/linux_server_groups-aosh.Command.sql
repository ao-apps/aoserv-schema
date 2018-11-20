select aosh.add_command(
  'add_linux_server_group',
  'linux',
  'linux_server_groups',
  'adds a Linux group to a server',
  '<i>group</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_linux_server_group',
  'linux',
  'linux_server_groups',
  'removes a Linux group from a server',
  '<i>group</i> <i>ao_server</i>',
  '1.0a100',
  null
);
