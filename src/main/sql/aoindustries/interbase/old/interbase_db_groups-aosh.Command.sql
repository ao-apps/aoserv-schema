select aosh.add_command(
  'add_interbase_db_group',
  'interbase',
  'interbase_db_groups',
  'adds an InterBase database group to the system',
  '<i>ao_server</i> <i>db_group</i> <i>linux_group</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'check_interbase_db_group_name',
  'interbase',
  'interbase_db_groups',
  'checks for format of an InterBase database group name',
  '<i>name</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'generate_interbase_db_group_name',
  'interbase',
  'interbase_db_groups',
  'generates a per-server unique InterBase database group name',
  '<i>ao_server</i> <i>template_base</i> <i>template_added</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'is_interbase_db_group_name_available',
  'interbase',
  'interbase_db_groups',
  'determines if an InterBase database group name is available',
  '<i>ao_server</i> <i>db_group</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'remove_interbase_db_group',
  'interbase',
  'interbase_db_groups',
  'removes an InterBase database group from the system',
  '<i>ao_server</i> <i>db_group</i>',
  '1.0a100',
  '1.30'
);
