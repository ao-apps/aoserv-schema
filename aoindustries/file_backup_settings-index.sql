create index file_backup_settings_package_idx on file_backup_settings (
  package
);
create index file_backup_settings_backup_level_idx on file_backup_settings (
  backup_level
);
create index file_backup_settings_backup_retention_idx on file_backup_settings (
  backup_retention
);
