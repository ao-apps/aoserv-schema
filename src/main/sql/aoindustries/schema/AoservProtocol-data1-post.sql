analyze "schema"."AoservProtocol";

-- Restore lastUsed
update "schema"."AoservProtocol" ap set "lastUsed"=(
  select aplu."lastUsed"
  from "schema"."AOServProtocol_lastUsed" aplu
  where aplu.version = ap.version
) where ap."lastUsed" is null;
drop table "schema"."AOServProtocol_lastUsed";
