create index mysql_databases_package_idx on mysql_databases (
  package
);
create index mysql_databases_backup_level_idx on mysql_databases (
  backup_level
);
create index mysql_databases_backup_retention_idx on mysql_databases (
  backup_retention
);
