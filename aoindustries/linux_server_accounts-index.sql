create index linux_server_accounts_ao_server_idx on linux_server_accounts (
  ao_server
);
create index linux_server_accounts_uid_idx on linux_server_accounts (
  uid
);
create index linux_server_accounts_cron_backup_level_idx on linux_server_accounts (
  cron_backup_level
);
create index linux_server_accounts_cron_backup_retention_idx on linux_server_accounts (
  cron_backup_retention
);
create index linux_server_accounts_home_backup_level_idx on linux_server_accounts (
  home_backup_level
);
create index linux_server_accounts_home_backup_retention_idx on linux_server_accounts (
  home_backup_retention
);
create index linux_server_accounts_inbox_backup_level_idx on linux_server_accounts (
  inbox_backup_level
);
create index linux_server_accounts_inbox_backup_retention_idx on linux_server_accounts (
  inbox_backup_retention
);
create index linux_server_accounts_autoresponder_from_idx on linux_server_accounts (
  autoresponder_from
);
create index linux_server_accounts_disable_log_idx on linux_server_accounts (
  disable_log
);
create index linux_server_accounts_sa_integration_mode_idx on linux_server_accounts (
  sa_integration_mode
);
