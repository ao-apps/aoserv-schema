/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020, 2021  AO Industries, Inc.
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

create or replace function "schema".add_foreign_key (
  "schema"        name,
  "table"         name,
  "column"        name,
  "foreignSchema" name,
  "foreignTable"  name,
  "foreignColumn" name,
  "sinceVersion"  text,
  "lastVersion"   text
)
returns integer
as $$
  insert into "schema"."ForeignKey"(
    id,
    "column",
    "foreignColumn",
    "sinceVersion",
    "lastVersion"
  ) values(
    (select coalesce(max(id), 0) + 1 from "schema"."ForeignKey"),
    "schema".get_column_versioned($1, $2, $3, $7, $8),
    "schema".get_column_versioned($4, $5, $6, $7, $8),
    $7,
    $8
  ) returning id;
$$ LANGUAGE sql;

delete from "schema"."ForeignKey";
