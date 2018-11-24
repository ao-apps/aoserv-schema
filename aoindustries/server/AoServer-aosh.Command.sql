select aosh.add_command(
  'get_mrtg_file',
  'server',
  'ao_servers',
  'gets a file from the MRTG report directory',
  '<i>ao_server</i> <i>filename</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'get_ups_status',
  'server',
  'ao_servers',
  'gets the status of the UPS powering this server',
  '<i>ao_server</i>',
  '1.63',
  null
);
select aosh.add_command(
  'restart_apache',
  'server',
  'ao_servers',
  'restarts the Apache web server',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'restart_cron',
  'server',
  'ao_servers',
  'restarts the cron daemon',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'restart_interbase',
  'server',
  'ao_servers',
  'restarts the InterBase database server',
  '<i>ao_server</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'restart_mysql',
  'server',
  'ao_servers',
  'restarts the MySQL database server',
  '<i>ao_server</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'restart_xfs',
  'server',
  'ao_servers',
  'restarts the X Font Server',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'restart_xvfb',
  'server',
  'ao_servers',
  'restarts the X Virtual Frame Buffer',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'start_apache',
  'server',
  'ao_servers',
  'starts the Apache web server',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'start_cron',
  'server',
  'ao_servers',
  'starts the cron daemon',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'start_interbase',
  'server',
  'ao_servers',
  'starts the InterBase database server',
  '<i>ao_server</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'start_mysql',
  'server',
  'ao_servers',
  'starts the MySQL database server',
  '<i>ao_server</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'start_xfs',
  'server',
  'ao_servers',
  'starts the X Font Server',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'start_xvfb',
  'server',
  'ao_servers',
  'starts the X Virtual Frame Buffer',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'stop_apache',
  'server',
  'ao_servers',
  'stops the Apache web server',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'stop_cron',
  'server',
  'ao_servers',
  'stops the cron daemon',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'stop_interbase',
  'server',
  'ao_servers',
  'stops the InterBase database server',
  '<i>ao_server</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'stop_mysql',
  'server',
  'ao_servers',
  'stops the MySQL database server',
  '<i>ao_server</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'stop_xfs',
  'server',
  'ao_servers',
  'stops the X Font Server',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'stop_xvfb',
  'server',
  'ao_servers',
  'stops the X Virtual Frame Buffer',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
