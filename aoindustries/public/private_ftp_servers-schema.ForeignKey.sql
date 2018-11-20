select "schema".add_foreign_key('public', 'private_ftp_servers', 'ip_address',           'net',   'ip_addresses',          'pkey', '1.0a100', '1.0a112');
select "schema".add_foreign_key('public', 'private_ftp_servers', 'net_bind',             'net',   'net_binds',             'pkey', '1.0a113', null);
select "schema".add_foreign_key('public', 'private_ftp_servers', 'linux_server_account', 'linux', 'linux_server_accounts', 'pkey', '1.0a100', '1.68');
select "schema".add_foreign_key('public', 'private_ftp_servers', 'linux_server_account', 'linux', 'linux_server_accounts', 'pkey', '1.69',    null);
select "schema".add_foreign_key('public', 'private_ftp_servers', 'linux_server_group',   'linux','linux_server_groups',   'pkey', '1.0a100', '1.38');
