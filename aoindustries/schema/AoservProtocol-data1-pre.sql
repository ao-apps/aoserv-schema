-- Backup lastUsed
drop table if exists "schema"."AOServProtocol_lastUsed";
create table "schema"."AOServProtocol_lastUsed" as select version, "lastUsed" from "schema"."AoservProtocol";

delete from "schema"."AoservProtocol";