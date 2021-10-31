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

CREATE OR REPLACE FUNCTION "schema".add_column (
  "schema"       name,
  "table"        name,
  "name"         name,
  "type"         name,
  "isNullable"   boolean,
  "isUnique"     boolean,
  "isPublic"     boolean,
  description    text,
  "sinceVersion" text,
  "lastVersion"  text
)
RETURNS text AS $$

INSERT INTO "schema"."Column"(
  id,
  "table",
  "name",
  "sinceVersion",
  "lastVersion",
  index,
  "type",
  "isNullable",
  "isUnique",
  "isPublic",
  description
) VALUES (
  (SELECT coalesce(max(id), 0) + 1 FROM "schema"."Column"),
  "schema".get_table_versioned($1, $2, $9, $10),
  $3,
  $9,
  $10,
  (SELECT
    coalesce(max(index), 0) + 1
  FROM
    "schema"."Column"
  WHERE
    "table"="schema".get_table_versioned($1, $2, $9, $10)),
  "schema".get_type_versioned($4, $9, $10),
  $5,
  $6,
  $7,
  $8
);
SELECT $1 || '.' || $2 || '.' || $3;

$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION "schema".add_column (
  "schema"       name,
  "table"        name,
  "name"         name,
  "type"         name,
  "isNullable"   boolean,
  "isUnique"     boolean,
  "isPublic"     boolean,
  "sinceVersion" text,
  "lastVersion"  text
)
RETURNS text AS $$
  SELECT "schema".add_column ($1, $2, $3, $4, $5, $6, $7, null, $8, $9);
$$ LANGUAGE SQL;

DELETE FROM "schema"."Column";
