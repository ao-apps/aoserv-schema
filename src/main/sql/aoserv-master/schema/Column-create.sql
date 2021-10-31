/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020  AO Industries, Inc.
 *     support@aoindustries.com
 *     7262 Bull Pen Cir
 *     Mobile, AL 36695
 *
 * This file is part of aoserv-schema.
 *
 * aoserv-schema is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * aoserv-schema is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with aoserv-schema.  If not, see <https://www.gnu.org/licenses/>.
 */

create table "schema"."Column" (
  id integer
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
  "isNullable" boolean
    not null,
  "isUnique" boolean
    not null,
  "isPublic" boolean
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
