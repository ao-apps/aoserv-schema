create index interbase_backups_package_ind on interbase_backups (
  package
);
create index interbase_backups_server_ind on interbase_backups (
  ao_server
);
create index remove_unused_backup_data_ind4 on interbase_backups (
  backup_data
);
