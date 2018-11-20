select "schema".add_foreign_key('scm', 'cvs_repositories', 'linux_server_account', 'linux',  'linux_server_accounts', 'pkey',  '1.0a100', null);
select "schema".add_foreign_key('scm', 'cvs_repositories', 'linux_server_group',   'linux',  'linux_server_groups',   'pkey',  '1.0a100', null);
select "schema".add_foreign_key('scm', 'cvs_repositories', 'backup_level',         'backup', 'backup_levels',         'level', '1.0a100', '1.30');
select "schema".add_foreign_key('scm', 'cvs_repositories', 'backup_retention',     'backup', 'backup_retentions',     'days',  '1.0a100', '1.30');
select "schema".add_foreign_key('scm', 'cvs_repositories', 'disable_log',          'public', 'disable_log',           'pkey',  '1.0a100', null);
