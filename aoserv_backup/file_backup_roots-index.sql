create index file_backups_added_ind on file_backup_roots (
  parent,
  server,
  package
);
