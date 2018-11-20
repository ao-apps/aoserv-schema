select "schema".add_column('email', 'email_lists', 'pkey',                 'pkey',  false,  true, false, 'a generated, unique primary key', '1.0a100', null);
select "schema".add_column('email', 'email_lists', 'path',                 'path',  false, false, false, 'the complete path to the email list', '1.0a100', null);
select "schema".add_column('email', 'email_lists', 'linux_account',        'fkey',  false, false, false, 'the linux_server_account that owns the list', '1.0a100', '1.30');
select "schema".add_column('email', 'email_lists', 'linux_server_account', 'fkey',  false, false, false, 'the linux_server_account that owns the list', '1.31', null);
select "schema".add_column('email', 'email_lists', 'linux_group',          'fkey',  false, false, false, 'the linux_server_group that the list belongs to please note that ownership and server are derived from this value', '1.0a100', '1.30');
select "schema".add_column('email', 'email_lists', 'linux_server_group',   'fkey',  false, false, false, 'the linux_server_group that the list belongs to please note that ownership and server are derived from this value', '1.31', null);
select "schema".add_column('email', 'email_lists', 'backup_level',         'short', false, false, false, 'the backup level for this list', '1.0a100', '1.30');
select "schema".add_column('email', 'email_lists', 'backup_retention',     'short', false, false, false, 'the number of days backups will be kept', '1.0a100', '1.30');
select "schema".add_column('email', 'email_lists', 'disable_log',          'fkey',   true, false, false, 'indicates that this list is disabled', '1.0a100', null);
