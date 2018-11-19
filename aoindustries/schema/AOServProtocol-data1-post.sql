analyze "schema"."AOServProtocol";

-- Restore lastUsed
update "schema"."AOServProtocol" ap set "lastUsed"=(
  select aplu."lastUsed"
  from "schema"."AOServProtocol_lastUsed" aplu
  where aplu.version = ap.version
) where ap."lastUsed" is null;
drop table "schema"."AOServProtocol_lastUsed";
