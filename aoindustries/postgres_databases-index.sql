create index postgres_databases_postgres_server_idx on postgres_databases (
  postgres_server
);
create index postgres_databases_datdba_idx on postgres_databases (
  datdba
);
create index postgres_databases_encoding_idx on postgres_databases (
  encoding
);
create index postgres_databases_backup_level_idx on postgres_databases (
  backup_level
);
create index postgres_databases_backup_retention_idx on postgres_databases (
  backup_retention
);
