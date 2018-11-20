select aosh.add_command(
  'add_linux_server_account',
  'linux',
  'linux_server_accounts',
  'grants a Linux account access to a server',
  '<i>username</i> <i>ao_server</i> {""|<i>home_directory</i>}',
  '1.0a100',
  null
);
select aosh.add_command(
  'compare_linux_server_account_password',
  'linux',
  'linux_server_accounts',
  'compares the provided password to the password on the server',
  '<i>username</i> <i>ao_server</i> <i>password</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'copy_home_directory',
  'linux',
  'linux_server_accounts',
  'copies the contents of a home directory from one server to another',
  '<i>username</i> <i>from_ao_server</i> <i>to_ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'copy_linux_server_account_password',
  'linux',
  'linux_server_accounts',
  'copies the password of one Linux account to another account',
  '<i>from_username</i> <i>from_ao_server</i> <i>to_username</i> <i>to_ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'disable_linux_server_account',
  'linux',
  'linux_server_accounts',
  'disables a Linux account on one server',
  '<i>username</i> <i>ao_server</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_linux_server_account',
  'linux',
  'linux_server_accounts',
  'enables a Linux account on one server',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'get_autoresponder_content',
  'linux',
  'linux_server_accounts',
  'gets the message body of an autoresponder',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'get_cron_table',
  'linux',
  'linux_server_accounts',
  'gets the contents of a user cron table',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'get_imap_folder_sizes',
  'linux',
  'linux_server_accounts',
  'gets the file sizes for IMAP folders',
  '<i>username</i> <i>ao_server</i> <i>folder_name</i> [...]',
  '1.0a120',
  null
);
select aosh.add_command(
  'get_inbox_attributes',
  'linux',
  'linux_server_accounts',
  'gets the attributes of an email inbox',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_linux_server_account_password_set',
  'linux',
  'linux_server_accounts',
  'determines if a Linux account password is set',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_linux_server_account_procmail_manual',
  'linux',
  'linux_server_accounts',
  'determines if a Linux account is in manual procmail mode',
  '<i>username</i> <i>ao_server</i>',
  '1.0a116',
  null
);
select aosh.add_command(
  'remove_linux_server_account',
  'linux',
  'linux_server_accounts',
  'removes a Linux account from a server',
  '<i>username</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_autoresponder',
  'linux',
  'linux_server_accounts',
  'configures an autoresponder',
  '<i>username</i> <i>ao_server</i> <i>from_address</i> <i>from_domain</i> <i>subject</i> <i>content</i> <i>enabled</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_cron_table',
  'linux',
  'linux_server_accounts',
  'sets the contents of a user cron table',
  '<i>username</i> <i>ao_server</i> <i>cron_table</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_linux_server_account_cron_backup_retention',
  'linux',
  'linux_server_accounts',
  'sets the cron file backup retention for a Linux account on one server',
  '<i>username</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_linux_server_account_home_backup_retention',
  'linux',
  'linux_server_accounts',
  'sets the home directory backup retention for a Linux account on one server',
  '<i>username</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_linux_server_account_inbox_backup_retention',
  'linux',
  'linux_server_accounts',
  'sets the email inbox directory backup retention for a Linux account on one server',
  '<i>username</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_linux_server_account_junk_email_retention',
  'linux',
  'linux_server_accounts',
  'sets the number of days emails will remain in the Junk folder',
  '<i>username</i> <i>ao_server</i> {""|<i>days</i>}',
  '1.0a120',
  null
);
select aosh.add_command(
  'set_linux_server_account_password',
  'linux',
  'linux_server_accounts',
  'sets the password for a Linux account on one server',
  '<i>username</i> <i>ao_server</i> <i>password</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_linux_server_account_spamassassin_integration_mode',
  'linux',
  'linux_server_accounts',
  'sets the behavior of the SpamAssassin filters',
  '<i>username</i> <i>ao_server</i> <i>mode</i>',
  '1.0a120',
  null
);
select aosh.add_command(
  'set_linux_server_account_spamassassin_required_score',
  'linux',
  'linux_server_accounts',
  'sets the required score for the SpamAssassin filters',
  '<i>username</i> <i>ao_server</i> <i>required_score</i>',
  '1.0a124',
  null
);
select aosh.add_command(
  'set_linux_server_account_trash_email_retention',
  'linux',
  'linux_server_accounts',
  'sets the number of days emails will remain in the Trash folder',
  '<i>username</i> <i>ao_server</i> {""|<i>days</i>}',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_linux_server_account_use_inbox',
  'linux',
  'linux_server_accounts',
  'sets whether or not email will be stored in the inbox',
  '<i>username</i> <i>ao_server</i> <i>use_inbox</i>',
  '1.0a100',
  null
);
