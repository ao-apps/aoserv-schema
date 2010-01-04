create unique index postgres_databases_uni on postgres_databases (
  "name",
  postgres_server
);
create unique index postgres_databases_ao_server_super on postgres_databases (
  ao_server,
  ao_server_resource
);
create index postgres_databases_ao_server_idx on postgres_databases (
  ao_server,
  postgres_server
);
create unique index postgres_databases_super on postgres_databases (
  postgres_server,
  ao_server_resource
);
create index postgres_databases_datdba_idx on postgres_databases (
  postgres_server,
  datdba
);
create index postgres_databases_encoding_idx on postgres_databases (
  encoding
);
