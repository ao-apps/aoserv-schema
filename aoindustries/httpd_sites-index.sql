create index httpd_sites_package_idx on httpd_sites (
  package
);
create index httpd_sites_linux_account_idx on httpd_sites (
  linux_account
);
create index httpd_sites_linux_group_idx on httpd_sites (
  linux_group
);
create index httpd_sites_config_backup_level_idx on httpd_sites (
  config_backup_level
);
create index httpd_sites_config_backup_retention_idx on httpd_sites (
  config_backup_retention
);
create index httpd_sites_file_backup_level_idx on httpd_sites (
  file_backup_level
);
create index httpd_sites_file_backup_retention_idx on httpd_sites (
  file_backup_retention
);
create index httpd_sites_ftp_backup_level_idx on httpd_sites (
  ftp_backup_level
);
create index httpd_sites_ftp_backup_retention_idx on httpd_sites (
  ftp_backup_retention
);
create index httpd_sites_log_backup_level_idx on httpd_sites (
  log_backup_level
);
create index httpd_sites_log_backup_retention_idx on httpd_sites (
  log_backup_retention
);
create index httpd_sites_disable_log_idx on httpd_sites (
  disable_log
);
