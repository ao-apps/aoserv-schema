-- Required for fast schema updates
create index "AOServProtocol_created_idx" on "schema"."AOServProtocol" (
  "created"
);
