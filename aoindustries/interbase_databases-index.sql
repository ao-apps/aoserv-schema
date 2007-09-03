create index interbase_databases_db_group_idx on interbase_databases (
  db_group
);
create index interbase_databases_datdba_idx on interbase_databases (
  datdba
);
create index interbase_databases_backup_level_idx on interbase_databases (
  backup_level
);
create index interbase_databases_backup_retention_idx on interbase_databases (
  backup_retention
);
