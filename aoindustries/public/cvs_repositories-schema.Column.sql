select "schema".add_column('cvs_repositories', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('cvs_repositories', 'path', 1, 'path', false, false, false, 'the full path to the repository', '1.0a100', null);
select "schema".add_column('cvs_repositories', 'linux_server_account', 2, 'fkey', false, false, false, 'the pkey of the directory owner', '1.0a100', null);
select "schema".add_column('cvs_repositories', 'linux_server_group', 3, 'fkey', false, false, false, 'the pkey of the directory group', '1.0a100', null);
select "schema".add_column('cvs_repositories', 'mode', 4, 'octal_long', false, false, false, 'the directory permissions', '1.0a100', null);
select "schema".add_column('cvs_repositories', 'created', 5, 'time', false, false, false, 'the time the repository was created', '1.0a100', null);
select "schema".add_column('cvs_repositories', 'backup_level', 6, 'short', false, false, false, 'the number of backup copies to keep', '1.0a100', '1.30');
select "schema".add_column('cvs_repositories', 'backup_retention', 7, 'short', false, false, false, 'the number of days backup data will be kept', '1.0a100', '1.30');
select "schema".add_column('cvs_repositories', 'disable_log', 8, 'fkey', true, false, false, 'indicates that this repository is disabled', '1.0a100', null);
