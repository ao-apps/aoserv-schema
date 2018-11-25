select "schema".add_column('scm', 'cvs_repositories', 'pkey',                 'pkey',       false,  true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('scm', 'cvs_repositories', 'path',                 'path',       false, false, false, 'the full path to the repository', '1.0a100', null);
select "schema".add_column('scm', 'cvs_repositories', 'linux_server_account', 'fkey',       false, false, false, 'the pkey of the directory owner', '1.0a100', null);
select "schema".add_column('scm', 'cvs_repositories', 'linux_server_group',   'fkey',       false, false, false, 'the pkey of the directory group', '1.0a100', null);
select "schema".add_column('scm', 'cvs_repositories', 'mode',                 'octal_long', false, false, false, 'the directory permissions', '1.0a100', null);
select "schema".add_column('scm', 'cvs_repositories', 'created',              'time',       false, false, false, 'the time the repository was created', '1.0a100', null);
select "schema".add_column('scm', 'cvs_repositories', 'backup_level',         'short',      false, false, false, 'the number of backup copies to keep', '1.0a100', '1.30');
select "schema".add_column('scm', 'cvs_repositories', 'backup_retention',     'short',      false, false, false, 'the number of days backup data will be kept', '1.0a100', '1.30');
select "schema".add_column('scm', 'cvs_repositories', 'disable_log',          'fkey',        true, false, false, 'indicates that this repository is disabled', '1.0a100', null);
