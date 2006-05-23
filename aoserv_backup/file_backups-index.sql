create index find_latest_file_backup_ind on file_backups (
  file_path,
  server,
  device,
  inode
);
create index find_hard_links_ind on file_backups (
  server,
  device,
  inode
);
create index get_file_backup_set_server_ind on file_backups (
  server,
  remove_time,
  create_time
);
create index remove_unused_backup_data_ind on file_backups (
  backup_data
);
create index file_backups_package_ind on file_backups (
  package
);
