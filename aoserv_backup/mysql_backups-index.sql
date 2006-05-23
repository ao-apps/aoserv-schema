create index mysql_backups_package_ind on mysql_backups (
  package
);
create index mysql_backups_mysql_server_ind on mysql_backups (
  mysql_server
);
create index remove_unused_backup_data_ind2 on mysql_backups (
  backup_data
);
