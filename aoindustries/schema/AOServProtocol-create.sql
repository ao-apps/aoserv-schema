create table "schema"."AOServProtocol" (
  version text
    primary key,
  created date
    not null,
  comments text
    not null,
  "lastUsed" date
);
grant all            on "schema"."AOServProtocol" to aoadmin;
grant select, update on "schema"."AOServProtocol" to aoserv_app;
