select "schema".add_column('linux_server_accounts', 'pkey', 0, 'pkey', false, true, false, 'the generated primary key', '1.0a100', null);
select "schema".add_column('linux_server_accounts', 'username', 1, 'username', false, false, false, 'the name of the user', '1.0a100', null);
select "schema".add_column('linux_server_accounts', 'ao_server', 2, 'fkey', false, false, false, 'the pkey of the server the username is on', '1.0a100', null);
select "schema".add_column('linux_server_accounts', 'uid', 3, 'int', false, false, false, 'the uid of the user on the machine', '1.0a100', '1.68');
select "schema".add_column('linux_server_accounts', 'uid', 4, 'fkey', false, false, false, 'the uid of the user on the machine', '1.69', '1.80');
select "schema".add_column('linux_server_accounts', 'uid', 5, 'linux_id', false, false, false, 'the uid of the user on the machine', '1.80.0', null);
select "schema".add_column('linux_server_accounts', 'home', 6, 'path', false, false, false, 'the home directory of the user on this machine', '1.0a100', null);
select "schema".add_column('linux_server_accounts', 'cron_backup_level', 7, 'short', false, false, false, 'the level of backup for cron table', '1.0a100', '1.30');
select "schema".add_column('linux_server_accounts', 'cron_backup_retention', 8, 'short', false, false, false, 'the number of days backup files will be kept', '1.0a100', '1.30');
select "schema".add_column('linux_server_accounts', 'home_backup_level', 9, 'short', false, false, false, 'the level of backup for home directory', '1.0a100', '1.30');
select "schema".add_column('linux_server_accounts', 'home_backup_retention', 10, 'short', false, false, false, 'the number of days backup files will be kept', '1.0a100', '1.30');
select "schema".add_column('linux_server_accounts', 'inbox_backup_level', 11, 'short', false, false, false, 'the level of backup for email inbox', '1.0a100', '1.30');
select "schema".add_column('linux_server_accounts', 'inbox_backup_retention', 12, 'short', false, false, false, 'the number of days backup files will be kept', '1.0a100', '1.30');
select "schema".add_column('linux_server_accounts', 'autoresponder_from', 13, 'fkey', true, false, false, 'the pkey of the email address used for the autoresponder', '1.0a100', null);
select "schema".add_column('linux_server_accounts', 'autoresponder_subject', 14, 'string', true, false, false, 'the subject of autoresponder messages', '1.0a100', null);
select "schema".add_column('linux_server_accounts', 'autoresponder_path', 15, 'string', true, false, false, 'the full path of the autoresponder text file', '1.0a100', null);
select "schema".add_column('linux_server_accounts', 'is_autoresponder_enabled', 16, 'boolean', false, false, false, 'flags if the autoresponder is enabled', '1.0a100', null);
select "schema".add_column('linux_server_accounts', 'disable_log', 17, 'fkey', true, false, false, 'indicates the account is disabled', '1.0a100', null);
select "schema".add_column('linux_server_accounts', 'predisable_password', 18, 'string', true, false, false, 'stores the password that was used before the account was disabled', '1.0a100', null);
select "schema".add_column('linux_server_accounts', 'created', 19, 'date', false, false, false, 'the time this account was added', '1.0a100', '1.68');
select "schema".add_column('linux_server_accounts', 'created', 20, 'time', false, false, false, 'the time this account was added', '1.69', null);
select "schema".add_column('linux_server_accounts', 'use_inbox', 21, 'boolean', false, false, false, 'email for this account will be stored in the inbox, otherwise it is just deleted', '1.0a100', null);
select "schema".add_column('linux_server_accounts', 'trash_email_retention', 22, 'int', true, false, false, 'the number of days before messages in the Trash folder are automatically removed.', '1.0a100', null);
select "schema".add_column('linux_server_accounts', 'junk_email_retention', 23, 'int', true, false, false, 'the number of days before messages in the Junk folder are automatically removed.', '1.0a120', null);
select "schema".add_column('linux_server_accounts', 'sa_integration_mode', 24, 'string', false, false, false, 'the integration mode for SpamAssassin', '1.0a120', null);
select "schema".add_column('linux_server_accounts', 'sa_required_score', 25, 'float', false, false, false, 'the minimum SpamAssassin score considered Junk', '1.0a124', null);
select "schema".add_column('linux_server_accounts', 'sa_discard_score', 26, 'int', true, false, false, 'the minimum SpamAssassin score that will be discarded instead of tagged or placed in the Junk folder', '1.40', null);
select "schema".add_column('linux_server_accounts', 'sudo', 27, 'string', true, false, false, 'the sudo setting or null when sudo not allowed', '1.80.1', null);