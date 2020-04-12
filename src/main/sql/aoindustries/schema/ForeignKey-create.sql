create table "schema"."ForeignKey" (
  id integer
    primary key,
  "column" integer
    not null,
  "foreignColumn" integer
    not null,
  "sinceVersion" text
    not null,
  "lastVersion" text,
  unique("column", "foreignColumn")
);

grant all    on "schema"."ForeignKey" to aoadmin;
grant select on "schema"."ForeignKey" to aoserv_app;
