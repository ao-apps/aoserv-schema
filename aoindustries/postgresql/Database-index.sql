create index "Database_postgres_server_fkey" on postgresql."Database" (
  postgres_server
);
create index "Database_datdba_fkey" on postgresql."Database" (
  datdba
);
create index "Database_encoding_fkey" on postgresql."Database" (
  encoding
);
