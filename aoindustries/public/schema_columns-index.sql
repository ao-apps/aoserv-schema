create index schema_columns_table_column_idx on schema_columns (
  table_name, column_name
);
create index schema_columns_type_idx on schema_columns (
  "type"
);
create index schema_columns_since_version_idx on schema_columns (
  since_version
);
create index schema_columns_last_version_idx on schema_columns (
  last_version
);
