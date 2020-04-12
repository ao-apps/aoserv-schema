select aosh.add_command(
  'set_ip_address_monitoring_enabled',
  'net.monitoring',
  'IpAddressMonitoring',
  'enables or disables the monitoring of an IP address',
  '<i>ip_address</i> <i>server</i> <i>net_device</i> <i>enabled</i>',
  '1.81.18',
  null
);
