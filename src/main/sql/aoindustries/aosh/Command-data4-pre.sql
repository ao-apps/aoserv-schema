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

create or replace function aosh.add_command (
  command        name,
  "schema"       name,
  "table"        name,
  description    text,
  syntax         text,
  "sinceVersion" text,
  "lastVersion"  text
)
returns name
as '
  insert into aosh."Command"(
    command,
    "sinceVersion",
    "lastVersion",
    "table",
    description,
    syntax
  ) values(
    $1 ,
    $6 ,
    $7 ,
    case
      when $3 is null then null
      else "schema".get_table_versioned($2, $3, $6, $7)
    end,
    $4 ,
    $5
  );
  select $1 ;
'
language 'sql';

create or replace function aosh.add_command (
  command        name,
  "table"        name,
  description    text,
  syntax         text,
  "sinceVersion" text,
  "lastVersion"  text
)
returns name
as '
  select aosh.add_command (
    $1 ,
    case when $2 is null then null else ''public'' end,
    $2 ,
    $3 ,
    $4 ,
    $5 ,
    $6
  );
'
language 'sql';

delete from aosh."Command";
