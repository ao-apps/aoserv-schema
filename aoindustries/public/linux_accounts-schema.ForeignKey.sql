select "schema".add_foreign_key('linux_accounts', 'username', 'usernames', 'username', '1.0a100', null);
select "schema".add_foreign_key('linux_accounts', 'shell', 'shells', 'path', '1.0a100', null);
select "schema".add_foreign_key('linux_accounts', 'type', 'linux_account_types', 'name', '1.0a100', null);
select "schema".add_foreign_key('linux_accounts', 'disable_log', 'disable_log', 'pkey', '1.0a100', null);
