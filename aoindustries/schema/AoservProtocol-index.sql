-- Required for fast schema updates
create index "AoservProtocol_created_idx" on "schema"."AoservProtocol" (
  "created"
);
