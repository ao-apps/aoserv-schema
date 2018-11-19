create index "Schema_sinceVersion_idx" on "schema"."Schema" (
  "sinceVersion"
);
create index "Schema_lastVersion_idx" on "schema"."Schema" (
  "lastVersion"
);
