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
 * along with aoserv-schema.  If not, see <http://www.gnu.org/licenses/>.
 */

create table "schema"."Table" (
  id integer
    primary key,
  "schema" integer
    not null,
  "name" name
    not null,
  "sinceVersion" text
    not null,
  "lastVersion" text,
  display text
    not null,
  "isPublic" boolean
    not null,
  description text,
  unique("schema", "name", "sinceVersion"),
  unique("lastVersion", "schema", "name")
);

comment on table  "schema"."Table"             is 'stores table names, display names, and descriptions for each table.';
comment on column "schema"."Table"."name"      is 'the unique name within a schema and single protocol version';
comment on column "schema"."Table".description is 'the description of the table.  When not provided, will be obtained from the pg_catalog.pg_description system catalog.';

-- Example query to include unspecified descriptions from pg_catalog.pg_description:
-- See https://www.postgresql.org/docs/9.4/catalog-pg-namespace.html
-- See https://www.postgresql.org/docs/9.4/catalog-pg-class.html
-- See https://www.postgresql.org/docs/9.4/catalog-pg-description.html
select
  st.id, st."name", st."sinceVersion", st."lastVersion", st.display, st."isPublic",
  coalesce(st.description, d.description) as description
from
             "schema"."Table"  st
  inner join "schema"."Schema"  s on st."schema" = s.id
  left  join (
    select
      pn.nspname, pc.relname, pd.description
    from
                 pg_catalog.pg_namespace   pn
      inner join pg_catalog.pg_class       pc on pn.oid = pc.relnamespace
      inner join pg_catalog.pg_description pd on pc.oid = pd.objoid and pd.objsubid=0
  ) d on (s."name", st."name") = (d.nspname, d.relname);

grant all    on "schema"."Table" to aoadmin;
grant select on "schema"."Table" to aoserv_app;
