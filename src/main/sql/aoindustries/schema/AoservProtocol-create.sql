-- TODO: Move to master schema?
create table "schema"."AoservProtocol" (
  version text
    primary key,
  created date
    not null,
  comments text
    not null,
  "lastUsed" date
);
grant all            on "schema"."AoservProtocol" to aoadmin;
grant select, update on "schema"."AoservProtocol" to aoserv_app;
