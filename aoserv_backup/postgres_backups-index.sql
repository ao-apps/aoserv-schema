create index postgres_backups_package_ind on postgres_backups (
  package
);
create index postgres_backups_postgres_server_ind on postgres_backups (
  postgres_server
);
create index remove_unused_backup_data_ind3 on postgres_backups (
  backup_data
);
