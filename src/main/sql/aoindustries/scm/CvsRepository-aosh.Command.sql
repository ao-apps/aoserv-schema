select aosh.add_command(
  'add_cvs_repository',
  'scm',
  'cvs_repositories',
  'adds a CVS repository to a server',
  '<i>ao_server</i> <i>path</i> <i>username</i> <i>group</i> <i>mode</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'disable_cvs_repositories',
  'scm',
  'cvs_repositories',
  'disables a CVS repository',
  '<i>pkey</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_cvs_repositories',
  'scm',
  'cvs_repositories',
  'enables a CVS repository',
  '<i>pkey</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_cvs_repository',
  'scm',
  'cvs_repositories',
  'removes a CVS repository from a server',
  '<i>ao_server</i> <i>path</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_cvs_repository_backup_retention',
  'scm',
  'cvs_repositories',
  'sets the backup retention for a CVS repository',
  '<i>ao_server</i> <i>path</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_cvs_repository_mode',
  'scm',
  'cvs_repositories',
  'sets the directory permissions of a CVS repository',
  '<i>ao_server</i> <i>path</i> <i>mode</i>',
  '1.0a100',
  null
);
