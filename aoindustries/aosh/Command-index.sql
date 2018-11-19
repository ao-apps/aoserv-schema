create index "Command_table_idx" on aosh."Command" (
  "table"
);
create index "Commands_sinceVersion_idx" on aosh."Command" (
  "sinceVersion"
);
create index "Command_lastVersion_idx" on aosh."Command" (
  "lastVersion"
);
