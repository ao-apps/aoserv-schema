create sequence "schema"."ForeignKey_id_seq" cycle;
grant all    on "schema"."ForeignKey_id_seq" to aoadmin;
grant select on "schema"."ForeignKey_id_seq" to aoserv_app;

create table "schema"."ForeignKey" (
  id integer
    default nextval('"schema"."ForeignKey_id_seq"')
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
