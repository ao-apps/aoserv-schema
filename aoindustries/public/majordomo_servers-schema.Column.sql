select "schema".add_column('majordomo_servers', 'domain', 0, 'fkey', false, true, false, 'the pkey of the domain that is hosted', '1.0a100', null);
select "schema".add_column('majordomo_servers', 'linux_server_account', 1, 'fkey', false, false, false, 'the pkey of linux_server_account to run as', '1.0a100', null);
select "schema".add_column('majordomo_servers', 'linux_server_group', 2, 'fkey', false, false, false, 'the pkey of the linux_server_group to run as', '1.0a100', null);
select "schema".add_column('majordomo_servers', 'version', 3, 'string', false, false, false, 'the version of Majordomo to use', '1.0a100', null);
select "schema".add_column('majordomo_servers', 'majordomo_pipe_address', 4, 'fkey', false, false, false, 'the email_address to use as the majordomo', '1.0a100', null);
select "schema".add_column('majordomo_servers', 'owner_majordomo_add', 5, 'fkey', false, false, false, 'the email_address that owns this majordomo list', '1.0a100', null);
select "schema".add_column('majordomo_servers', 'majordomo_owner_add', 6, 'fkey', false, false, false, 'the email_address that owns this majordomo list', '1.0a100', null);
select "schema".add_column('majordomo_servers', 'backup_level', 7, 'short', false, false, false, 'the number of backup copies to store', '1.0a100', '1.30');
select "schema".add_column('majordomo_servers', 'backup_retention', 8, 'short', false, false, false, 'the number of days backups will be kept', '1.0a100', '1.30');
