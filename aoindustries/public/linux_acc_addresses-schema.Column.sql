select "schema".add_column('linux_acc_addresses', 'pkey', 0, 'pkey', false, true, false, 'a unique, generated primary key', '1.0a100', null);
select "schema".add_column('linux_acc_addresses', 'email_address', 1, 'fkey', false, false, false, 'reference to pkey of email_addresses', '1.0a100', null);
select "schema".add_column('linux_acc_addresses', 'linux_account', 2, 'username', false, false, false, 'reference to username of linux_accounts', '1.0a100', '1.30');
select "schema".add_column('linux_acc_addresses', 'linux_server_account', 3, 'fkey', false, false, false, 'reference to linux_server_accounts', '1.31', null);
