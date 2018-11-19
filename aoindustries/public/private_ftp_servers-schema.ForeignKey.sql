select "schema".add_foreign_key('private_ftp_servers', 'ip_address', 'ip_addresses', 'pkey', '1.0a100', '1.0a112');
select "schema".add_foreign_key('private_ftp_servers', 'net_bind', 'net_binds', 'pkey', '1.0a113', null);
select "schema".add_foreign_key('private_ftp_servers', 'linux_server_account', 'linux_server_accounts', 'pkey', '1.0a100', '1.68');
select "schema".add_foreign_key('private_ftp_servers', 'linux_server_account', 'linux_server_accounts', 'pkey', '1.69', null);
select "schema".add_foreign_key('private_ftp_servers', 'linux_server_group', 'linux_server_groups', 'pkey', '1.0a100', '1.38');
