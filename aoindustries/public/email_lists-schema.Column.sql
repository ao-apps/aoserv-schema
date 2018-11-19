select "schema".add_column('email_lists', 'pkey', 0, 'pkey', false, true, false, 'a generated, unique primary key', '1.0a100', null);
select "schema".add_column('email_lists', 'path', 1, 'path', false, false, false, 'the complete path to the email list', '1.0a100', null);
select "schema".add_column('email_lists', 'linux_account', 2, 'fkey', false, false, false, 'the linux_server_account that owns the list', '1.0a100', '1.30');
select "schema".add_column('email_lists', 'linux_server_account', 3, 'fkey', false, false, false, 'the linux_server_account that owns the list', '1.31', null);
select "schema".add_column('email_lists', 'linux_group', 4, 'fkey', false, false, false, 'the linux_server_group that the list belongs to please note that ownership and server are derived from this value', '1.0a100', '1.30');
select "schema".add_column('email_lists', 'linux_server_group', 5, 'fkey', false, false, false, 'the linux_server_group that the list belongs to please note that ownership and server are derived from this value', '1.31', null);
select "schema".add_column('email_lists', 'backup_level', 6, 'short', false, false, false, 'the backup level for this list', '1.0a100', '1.30');
select "schema".add_column('email_lists', 'backup_retention', 7, 'short', false, false, false, 'the number of days backups will be kept', '1.0a100', '1.30');
select "schema".add_column('email_lists', 'disable_log', 8, 'fkey', true, false, false, 'indicates that this list is disabled', '1.0a100', null);
