create index "Column_table_name_idx" on "schema"."Column" (
  "table", "name"
);
create index "Column_sinceVersion_idx" on "schema"."Column" (
  "sinceVersion"
);
create index "Column_lastVersion_idx" on "schema"."Column" (
  "lastVersion"
);
create index "Column_type_idx" on "schema"."Column" (
  "type"
);
