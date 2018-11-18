create index "ForeignKey_foreignColumn_idx" on "schema"."ForeignKey" (
  "foreignColumn"
);
create index "ForeignKey_sinceVersion_idx" on "schema"."ForeignKey" (
  "sinceVersion"
);
create index "ForeignKey_lastVersion_idx" on "schema"."ForeignKey" (
  "lastVersion"
);
