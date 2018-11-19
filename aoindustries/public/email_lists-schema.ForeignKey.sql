select "schema".add_foreign_key('email_lists', 'linux_account', 'linux_server_accounts', 'pkey', '1.0a100', '1.30');
select "schema".add_foreign_key('email_lists', 'linux_server_account', 'linux_server_accounts', 'pkey', '1.31', null);
select "schema".add_foreign_key('email_lists', 'linux_group', 'linux_server_groups', 'pkey', '1.0a100', '1.30');
select "schema".add_foreign_key('email_lists', 'linux_server_group', 'linux_server_groups', 'pkey', '1.31', null);
select "schema".add_foreign_key('email_lists', 'backup_level', 'backup_levels', 'level', '1.0a100', '1.30');
select "schema".add_foreign_key('email_lists', 'backup_retention', 'backup_retentions', 'days', '1.0a100', '1.30');
select "schema".add_foreign_key('email_lists', 'disable_log', 'disable_log', 'pkey', '1.0a100', null);
