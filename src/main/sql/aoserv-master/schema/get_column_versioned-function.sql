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

create or replace function "schema".get_column_versioned (
  "schema"       name,
  "table"        name,
  "name"         name,
  "sinceVersion" text,
  "lastVersion"  text
)
returns integer
as $$
  select coalesce(
    (select
      sc.id
    from
                 "schema"."Column"            sc
      inner join "schema"."AoservProtocol" since on sc."sinceVersion" = since.version
      left  join "schema"."AoservProtocol"  last on sc."lastVersion"  =  last.version
    where
      sc."table" = "schema".get_table_versioned($1, $2, $4, $5)
      and sc."name" = $3
      and (select created from "schema"."AoservProtocol" where version= $4 ) >= since.created
      and (
        case
          when $5 is null then (select created from "schema"."AoservProtocol" order by created desc limit 1)
          else (select created from "schema"."AoservProtocol" where version= $5 )
        end
        <=
        case
          when last.version is null then (select created from "schema"."AoservProtocol" order by created desc limit 1)
          else last.created
        end
      )
    ),
    "schema".raise_exception(
      'Column not found: ' || coalesce($1, 'NULL') || '.' || coalesce($2, 'NULL') || '.' || coalesce($3, 'NULL') || ', ' || coalesce($4, 'NULL') || '-' || coalesce($5, 'NULL')
    )::integer
  );
$$ LANGUAGE sql
STABLE;

-- Examples

-- select "schema".get_column_versioned('ticket', 'action_types', 'type', '1.0a100', '1.43');
-- Expect: 1

-- select "schema".get_column_versioned('ticket', 'action_types', 'type', '1.0a100', '1.44');
-- Expect: ERROR:  Table not found: public.action_types, 1.0a100-1.44

-- select "schema".get_column_versioned('billing', 'Transaction', 'merchant_account', '1.28', '1.28');
-- Expect: 2340

-- select "schema".get_column_versioned('billing', 'Transaction', 'merchant_account', '1.28', '1.29');
-- ERROR:  Column not found: billing.Transaction.merchant_account, 1.28-1.29
