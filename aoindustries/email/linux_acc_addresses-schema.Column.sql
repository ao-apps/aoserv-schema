select "schema".add_column('email', 'linux_acc_addresses', 'pkey',                 'pkey',     false,  true, false, 'a unique, generated primary key', '1.0a100', null);
select "schema".add_column('email', 'linux_acc_addresses', 'email_address',        'fkey',     false, false, false, 'reference to pkey of email_addresses', '1.0a100', null);
select "schema".add_column('email', 'linux_acc_addresses', 'linux_account',        'username', false, false, false, 'reference to username of linux_accounts', '1.0a100', '1.30');
select "schema".add_column('email', 'linux_acc_addresses', 'linux_server_account', 'fkey',     false, false, false, 'reference to linux_server_accounts', '1.31', null);
