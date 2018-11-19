create index "Table_schema_idx" on "schema"."Table" (
  "schema"
);
create index "Table_lastVersion_idx" on "schema"."Table" (
  "lastVersion"
);
