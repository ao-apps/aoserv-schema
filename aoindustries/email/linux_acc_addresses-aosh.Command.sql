select aosh.add_command(
  'add_linux_acc_address',
  'email',
  'linux_acc_addresses',
  'attaches an email address to a Linux account',
  '<i>address</i> <i>ao_server</i> <i>username</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_linux_acc_address',
  'email',
  'linux_acc_addresses',
  'detaches an email address from a Linux account',
  '<i>address</i> <i>ao_server</i> <i>username</i>',
  '1.0a100',
  null
);
