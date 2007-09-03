create index schema_foreign_keys_foreign_column_idx on schema_foreign_keys (
  foreign_column
);
create index schema_foreign_keys_tied_bridge_idx on schema_foreign_keys (
  tied_bridge
);
create index schema_foreign_keys_since_version_idx on schema_foreign_keys (
  since_version
);
create index schema_foreign_keys_last_version_idx on schema_foreign_keys (
  last_version
);
