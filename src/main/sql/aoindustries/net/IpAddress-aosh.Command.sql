select aosh.add_command(
  'check_ip_address',
  'net',
  'ip_addresses',
  'checks the format of an IP address',
  '<i>ip_address</i>',
  '1.0a100',
  '1.80'
);
select aosh.add_command(
  'is_ip_address_used',
  'net',
  'ip_addresses',
  'determines if an IP address is currently in use',
  '<i>ip_address</i> <i>ao_server</i> <i>net_device</i>',
  '1.0a100',
  '1.32'
);
select aosh.add_command(
  'is_ip_address_used',
  'net',
  'ip_addresses',
  'determines if an IP address is currently in use',
  '<i>ip_address</i> <i>server</i> <i>net_device</i>',
  '1.33',
  null
);
select aosh.add_command(
  'move_ip_address',
  'net',
  'ip_addresses',
  'moves an IP address to a new server',
  '<i>ip_address</i> <i>from_server</i> <i>from_net_device</i> <i>to_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_ip_address_dhcp_address',
  'net',
  'ip_addresses',
  'sets the new IP address for a DHCP-enabled device',
  '<i>pkey</i> <i>ip_address</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_ip_address_hostname',
  'net',
  'ip_addresses',
  'sets the hostname associated with an IP address',
  '<i>ip_address</i> <i>ao_server</i> <i>net_device</i> <i>hostname</i>',
  '1.0a100',
  '1.32'
);
select aosh.add_command(
  'set_ip_address_hostname',
  'net',
  'ip_addresses',
  'sets the hostname associated with an IP address',
  '<i>ip_address</i> <i>server</i> <i>net_device</i> <i>hostname</i>',
  '1.33',
  null
);
select aosh.add_command(
  'set_ip_address_monitoring_enabled',
  'net',
  'ip_addresses',
  'enables or disables the monitoring of an IP address',
  '<i>ip_address</i> <i>server</i> <i>net_device</i> <i>enabled</i>',
  '1.81.17',
  '1.81.17'
);
select aosh.add_command(
  'set_ip_address_package',
  'net',
  'ip_addresses',
  'sets the package ownership of an IP address',
  '<i>ip_address</i> <i>ao_server</i> <i>net_device</i> <i>package</i>',
  '1.0a100',
  '1.32'
);
select aosh.add_command(
  'set_ip_address_package',
  'net',
  'ip_addresses',
  'sets the package ownership of an IP address',
  '<i>ip_address</i> <i>server</i> <i>net_device</i> <i>package</i>',
  '1.33',
  null
);
