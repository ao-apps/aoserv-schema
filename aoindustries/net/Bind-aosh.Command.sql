select aosh.add_command(
  'add_net_bind',
  'net',
  'net_binds',
  'adds a net binds to the system',
  '<i>ao_server</i> <i>package</i> <i>ip_address</i> <i>net_device</i> <i>port</i> <i>net_protocol</i> <i>app_protocol</i> <i>open_firewall</i> {""|<i>monitoring_delay</i>} {""|<i>monitoring_parameter</i>} {""|<i>monitoring_contact</i>} {""|<i>monitoring_info</i>}',
  '1.0a100',
  '1.0a103'
);
select aosh.add_command(
  'add_net_bind',
  'net',
  'net_binds',
  'adds a net binds to the system',
  '<i>ao_server</i> <i>package</i> <i>ip_address</i> <i>net_device</i> <i>port</i> <i>net_protocol</i> <i>app_protocol</i> <i>open_firewall</i> <i>monitoring_enabled</i>',
  '1.0a104',
  '1.32'
);
select aosh.add_command(
  'add_net_bind',
  'net',
  'net_binds',
  'adds a net binds to the system',
  '<i>server</i> <i>package</i> <i>ip_address</i> <i>net_device</i> <i>port</i> <i>net_protocol</i> <i>app_protocol</i> <i>open_firewall</i> <i>monitoring_enabled</i>',
  '1.33',
  '1.80.2'
);
select aosh.add_command(
  'add_net_bind',
  'net',
  'net_binds',
  'adds a net binds to the system',
  '<i>server</i> <i>package</i> <i>ip_address</i> <i>net_device</i> <i>port</i> <i>net_protocol</i> <i>app_protocol</i> <i>monitoring_enabled</i> [<i>firewalld_zone</i>] [...]',
  '1.81.0',
  null
);
select aosh.add_command(
  'remove_net_bind',
  'net',
  'net_binds',
  'removes a net binds from the system',
  '<i>pkey</i>',
  '1.0a104',
  null
);
select aosh.add_command(
  'set_net_bind_firewalld_zones',
  'net',
  'net_binds',
  'sets the enabled firewalld zones for this port',
  '<i>pkey</i> [<i>firewalld_zone</i>] [...]',
  '1.81.0',
  null
);
select aosh.add_command(
  'set_net_bind_monitoring_enabled',
  'net',
  'net_binds',
  'enables or disables the monitoring of this port',
  '<i>pkey</i> <i>enabled</i>',
  '1.0a105',
  null
);
select aosh.add_command(
  'set_net_bind_open_firewall',
  'net',
  'net_binds',
  'opens or closes the firewall filters associated with this port',
  '<i>pkey</i> <i>open_firewall</i>',
  '1.0a105',
  '1.80.2'
);
