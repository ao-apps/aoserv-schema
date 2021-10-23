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
 * along with aoserv-schema.  If not, see <http://www.gnu.org/licenses/>.
 */

create or replace function "schema".get_schema_versioned (
  "name"         name,
  "sinceVersion" text,
  "lastVersion"  text
)
returns integer
as $$
  select coalesce(
    (select
      s.id
    from
                 "schema"."Schema"             s
      inner join "schema"."AoservProtocol" since on s."sinceVersion" = since.version
      left  join "schema"."AoservProtocol"  last on s."lastVersion"  =  last.version
    where
      s."name" = $1
      and (select created from "schema"."AoservProtocol" where version= $2 ) >= since.created
      and (
        case
          when $3 is null then (select created from "schema"."AoservProtocol" order by created desc limit 1)
          else (select created from "schema"."AoservProtocol" where version= $3 )
        end
        <=
        case
          when last.version is null then (select created from "schema"."AoservProtocol" order by created desc limit 1)
          else last.created
        end
      )
    ),
    "schema".raise_exception(
      'Schema not found: ' || coalesce($1, 'NULL') || ', ' || coalesce($2, 'NULL') || '-' || coalesce($3, 'NULL')
    )::integer
  );
$$ LANGUAGE sql
STABLE;

-- Examples

-- select "schema".get_schema_versioned('distribution', '1.0a100', null);
-- Expect: 0

-- select "schema".get_schema_versioned('monitoring', '1.81.18', null);
-- Expect: 4

-- select "schema".get_schema_versioned('monitoring', '1.81.17', null);
-- Expect: ERROR:  Schema not found: monitoring, 1.81.17-NULL
