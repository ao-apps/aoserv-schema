select "schema".add_foreign_key('email', 'linux_acc_addresses', 'email_address',                 'email_addresses',       'pkey',     '1.0a100',  null);
select "schema".add_foreign_key('email', 'linux_acc_addresses', 'linux_account',        'linux', 'linux_accounts',        'username', '1.0a100', '1.30');
select "schema".add_foreign_key('email', 'linux_acc_addresses', 'linux_server_account', 'linux', 'linux_server_accounts', 'pkey',     '1.31',    null);
