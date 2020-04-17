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

create or replace function "schema".add_table (
  "schema"       name,
  "table"        name,
  display        text,
  "isPublic"     boolean,
  description    text,
  "sinceVersion" text,
  "lastVersion"  text
)
returns text
as '
  insert into "schema"."Table"(
    id,
    "schema",
    "name",
    "sinceVersion",
    "lastVersion",
    display,
    "isPublic",
    description
  ) values(
    (select coalesce(max(id), 0) + 1 from "schema"."Table"),
    "schema".get_schema_versioned( $1 , $6 , $7),
    $2 ,
    $6 ,
    $7 ,
    $3 ,
    $4 ,
    $5
  );
  select $1 || ''.'' || $2;
'
language 'sql';

delete from "schema"."Table";
