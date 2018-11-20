select aosh.add_command(
  'add_business_server',
  'server',
  'business_servers',
  'grants a business access to a server',
  '<i>business</i> <i>server</i>',
  '1.0a100',
  '1.0a101'
);
select aosh.add_command(
  'add_business_server',
  'server',
  'business_servers',
  'grants a business access to a server',
  '<i>business</i> <i>server</i> <i>can_configure_backup</i>',
  '1.0a102',
  '1.30'
);
select aosh.add_command(
  'add_business_server',
  'server',
  'business_servers',
  'grants a business access to a server',
  '<i>business</i> <i>server</i>',
  '1.31',
  null
);
select aosh.add_command(
  'remove_business_server',
  'server',
  'business_servers',
  'removes a business'' access to a server',
  '<i>business</i> <i>server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_default_business_server',
  'server',
  'business_servers',
  'sets the default server for a business',
  '<i>business</i> <i>server</i>',
  '1.0a100',
  null
);
