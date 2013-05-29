create index postgres_databases_postgres_server_idx on postgres_databases (
  postgres_server
);
create index postgres_databases_datdba_idx on postgres_databases (
  datdba
);
create index postgres_databases_encoding_idx on postgres_databases (
  encoding
);
