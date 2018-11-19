create table "schema"."Type" (
  id integer
    primary key,
  "name" name
    not null,
  "sinceVersion" text
    not null,
  "lastVersion" text,
  unique("name", "sinceVersion"),
  unique("lastVersion", "name")
);

comment on column "schema"."Type"."name" is 'the unique name within a single protocol version';

grant all    on "schema"."Type" to aoadmin;
grant select on "schema"."Type" to aoserv_app;
