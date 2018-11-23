select aosh.add_command(
  'create_virtual_server',
  'infrastructure',
  'virtual_servers',
  'calls "xl create" on the current primary physical server',
  '<i>virtual_server</i>',
  '1.64',
  null
);
select aosh.add_command(
  'reboot_virtual_server',
  'infrastructure',
  'virtual_servers',
  'calls "xl reboot" on the current primary physical server',
  '<i>virtual_server</i>',
  '1.64',
  null
);
select aosh.add_command(
  'shutdown_virtual_server',
  'infrastructure',
  'virtual_servers',
  'calls "xl shutdown" on the current primary physical server',
  '<i>virtual_server</i>',
  '1.64',
  null
);
select aosh.add_command(
  'destroy_virtual_server',
  'infrastructure',
  'virtual_servers',
  'calls "xl destroy" on the current primary physical server',
  '<i>virtual_server</i>',
  '1.64',
  null
);
select aosh.add_command(
  'pause_virtual_server',
  'infrastructure',
  'virtual_servers',
  'calls "xl pause" on the current primary physical server',
  '<i>virtual_server</i>',
  '1.64',
  null
);
select aosh.add_command(
  'unpause_virtual_server',
  'infrastructure',
  'virtual_servers',
  'calls "xl unpause" on the current primary physical server',
  '<i>virtual_server</i>',
  '1.64',
  null
);
select aosh.add_command(
  'get_primary_physical_server',
  'infrastructure',
  'virtual_servers',
  'gets the physical server that is currently the primary node for this virtual server',
  '<i>virtual_server</i>',
  '1.73',
  null
);
select aosh.add_command(
  'get_secondary_physical_server',
  'infrastructure',
  'virtual_servers',
  'gets the physical server that is currently the secondary node for this virtual server',
  '<i>virtual_server</i>',
  '1.73',
  null
);
select aosh.add_command(
  'get_virtual_server_status',
  'infrastructure',
  'virtual_servers',
  'calls "xl list" to get the current state on the current primary physical server',
  '<i>virtual_server</i>',
  '1.64',
  null
);
