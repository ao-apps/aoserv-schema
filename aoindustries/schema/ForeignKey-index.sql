create index "ForeignKey_foreignColumn_fkey" on "schema"."ForeignKey" (
  "foreignColumn"
);
create index "ForeignKey_sinceVersion_fkey" on "schema"."ForeignKey" (
  "sinceVersion"
);
create index "ForeignKey_lastVersion_fkey" on "schema"."ForeignKey" (
  "lastVersion"
);
