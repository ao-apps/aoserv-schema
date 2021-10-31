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
  -- TODO: Does this public flag have any relevance?
  "isPublic" boolean
    not null,
  description text,
  unique("name", "sinceVersion"),
  unique("lastVersion", "name")
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
  left join (
    select
      pn.nspname, pd.description
    from
                 pg_catalog.pg_namespace   pn
      inner join pg_catalog.pg_description pd on pn.oid = pd.objoid and pd.objsubid=0
  ) d on s."name" = d.nspname;

grant all    on "schema"."Schema" to aoadmin;
grant select on "schema"."Schema" to aoserv_app;
