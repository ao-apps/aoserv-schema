create index schema_tables_since_version_idx on schema_tables (
  since_version
);
create index schema_tables_last_version_idx on schema_tables (
  last_version
);
