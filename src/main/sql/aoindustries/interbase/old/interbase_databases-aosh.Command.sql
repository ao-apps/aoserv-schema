select aosh.add_command(
  'add_interbase_database',
  'interbase',
  'interbase_databases',
  'creates a new InterBase database',
  '<i>ao_server</i> <i>db_group</i> <i>name</i> <i>datdba</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'backup_interbase_database',
  'interbase',
  'interbase_databases',
  'dumps the contents of a database onto a backup server',
  '<i>ao_server</i> <i>db_group</i> <i>name</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'check_interbase_database_name',
  'interbase',
  'interbase_databases',
  'checks the validity for an InterBase database name',
  '<i>name</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'dump_interbase_database',
  'interbase',
  'interbase_databases',
  'dumps the contents of an InterBase database',
  '<i>ao_server</i> <i>db_group</i> <i>name</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'generate_interbase_database_name',
  'interbase',
  'interbase_databases',
  'generates a per-server and per-group unique InterBase database name',
  '<i>ao_server</i> <i>db_group</i> <i>template_base</i> <i>template_added</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'is_interbase_database_name_available',
  'interbase',
  'interbase_databases',
  'checks the availability of an InterBase database name',
  '<i>ao_server</i> <i>db_group</i> <i>name</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'remove_interbase_database',
  'interbase',
  'interbase_databases',
  'removes an InterBase database from the system',
  '<i>ao_server</i> <i>db_group</i> <i>name</i>',
  '1.0a100',
  '1.30'
);
