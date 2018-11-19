select "schema".add_foreign_key('email', 'email_lists', 'linux_account',        'public', 'linux_server_accounts', 'pkey',  '1.0a100', '1.30');
select "schema".add_foreign_key('email', 'email_lists', 'linux_server_account', 'public', 'linux_server_accounts', 'pkey',  '1.31',    null);
select "schema".add_foreign_key('email', 'email_lists', 'linux_group',          'public', 'linux_server_groups',   'pkey',  '1.0a100', '1.30');
select "schema".add_foreign_key('email', 'email_lists', 'linux_server_group',   'public', 'linux_server_groups',   'pkey',  '1.31',    null);
select "schema".add_foreign_key('email', 'email_lists', 'backup_level',         'public', 'backup_levels',         'level', '1.0a100', '1.30');
select "schema".add_foreign_key('email', 'email_lists', 'backup_retention',     'public', 'backup_retentions',     'days',  '1.0a100', '1.30');
select "schema".add_foreign_key('email', 'email_lists', 'disable_log',          'public', 'disable_log',           'pkey',  '1.0a100', null);