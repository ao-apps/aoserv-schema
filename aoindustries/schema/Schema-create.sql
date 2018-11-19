create table "schema"."Schema" (
  id integer
    primary key,
  "name" name
    not null,
  "sinceVersion" text
    not null,
  "lastVersion" text,
  display text
    not null,
  "isPublic" bool
    not null,
  description text
);

comment on table  "schema"."Schema"             is 'A schema is one namespace of database objects.';
comment on column "schema"."Schema"."name"      is 'the unique name within a single protocol version';
comment on column "schema"."Schema".description is 'A description of the schema.  When not provided, will be obtained from the pg_catalog.pg_description system catalog.';

-- Example query to include unspecified descriptions from pg_catalog.pg_description:
-- See https://www.postgresql.org/docs/9.4/catalog-pg-namespace.html
-- See https://www.postgresql.org/docs/9.4/catalog-pg-description.html
select
  s.id, s."name", s."sinceVersion", s."lastVersion", s.display, s."isPublic",
  coalesce(s.description, d.description) as description
from
  "schema"."Schema" s
  left outer join (
    select
      pn.nspname, pd.description
    from
                 pg_catalog.pg_namespace   pn
      inner join pg_catalog.pg_description pd on pn.oid = pd.objoid and pd.objsubid=0
  ) d on s."name" = d.nspname;

grant all    on "schema"."Schema" to aoadmin;
grant select on "schema"."Schema" to aoserv_app;
