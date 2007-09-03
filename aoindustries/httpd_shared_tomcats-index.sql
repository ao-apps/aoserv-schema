create index httpd_shared_tomcats_version_idx on httpd_shared_tomcats (
  version
);
create index httpd_shared_tomcats_linux_server_account_idx on httpd_shared_tomcats (
  linux_server_account
);
create index httpd_shared_tomcats_linux_server_group_idx on httpd_shared_tomcats (
  linux_server_group
);
create index httpd_shared_tomcats_config_backup_level_idx on httpd_shared_tomcats (
  config_backup_level
);
create index httpd_shared_tomcats_config_backup_retention_idx on httpd_shared_tomcats (
  config_backup_retention
);
create index httpd_shared_tomcats_file_backup_level_idx on httpd_shared_tomcats (
  file_backup_level
);
create index httpd_shared_tomcats_file_backup_retention_idx on httpd_shared_tomcats (
  file_backup_retention
);
create index httpd_shared_tomcats_log_backup_level_idx on httpd_shared_tomcats (
  log_backup_level
);
create index httpd_shared_tomcats_log_backup_retention_idx on httpd_shared_tomcats (
  log_backup_retention
);
create index httpd_shared_tomcats_disable_log_idx on httpd_shared_tomcats (
  disable_log
);
