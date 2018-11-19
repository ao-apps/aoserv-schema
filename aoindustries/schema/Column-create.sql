create sequence "schema"."Column_id_seq" cycle;
grant all    on "schema"."Column_id_seq" to aoadmin;
grant select on "schema"."Column_id_seq" to aoserv_app;

create table "schema"."Column" (
  id integer
    default nextval('"schema"."Column_id_seq"')
    primary key,
  "table" integer
    not null,
  "name" name
    not null,
  "sinceVersion" text
    not null,
  "lastVersion" text,
  index smallint
    not null,
  "type" integer
    not null,
  "isNullable" bool
    not null,
  "isUnique" bool
    not null,
  "isPublic" bool
    not null,
  description text,
  unique(index, "table"),
  unique("table", "name", "sinceVersion"),
  unique("lastVersion", "table", "name")
);

comment on table  "schema"."Column"             is 'stores the details about the data contained in each column.';
comment on column "schema"."Column"."name"      is 'the unique name within the table and a single protocol version';
comment on column "schema"."Column".index       is 'the unique numeric index within the table';
comment on column "schema"."Column".description is 'the description of the column.  When not provided, will be obtained from the pg_catalog.pg_description system catalog.';

-- Example query to include unspecified descriptions from pg_catalog.pg_description:
-- See https://www.postgresql.org/docs/9.4/catalog-pg-namespace.html
-- See https://www.postgresql.org/docs/9.4/catalog-pg-class.html
-- See https://www.postgresql.org/docs/9.4/catalog-pg-attribute.html
-- See https://www.postgresql.org/docs/9.4/catalog-pg-description.html
-- See https://stackoverflow.com/questions/20194806/how-to-get-a-list-column-names-and-datatype-of-a-table-in-postgresql
select
  sc.id, sc."table", sc."name", sc."sinceVersion", sc."lastVersion", sc.index, sc."type", sc."isNullable", sc."isUnique", sc."isPublic",
  coalesce(sc.description, d.description) as description
from
             "schema"."Column" sc
  inner join "schema"."Table"  st on sc."table"  = st.id
  inner join "schema"."Schema"  s on st."schema" =  s.id
  left  join (
    select
      pn.nspname, pc.relname, pa.attname, pd.description
    from
                 pg_catalog.pg_namespace   pn
      inner join pg_catalog.pg_class       pc on pn.oid = pc.relnamespace
      inner join pg_catalog.pg_attribute   pa on pc.oid = pa.attrelid
      inner join pg_catalog.pg_description pd on pc.oid = pd.objoid and pd.objsubid = pa.attnum
  ) d on (s."name", st."name", sc."name") = (d.nspname, d.relname, d.attname);

grant all    on "schema"."Column" to aoadmin;
grant select on "schema"."Column" to aoserv_app;
