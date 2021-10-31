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

drop function "schema".add_column (name,name,name,name,boolean,boolean,boolean,text,text);
drop function "schema".add_column (name,name,name,name,boolean,boolean,boolean,text,text,text);

analyze "schema"."Column";

/* This will show not public in public, which can happen rarely - useful for a review:
select
  case when exists (
    select
      s."name" as "schema",
      st."name" as "table",
      sc."name" as "column"
    from
                 "schema"."Column" sc
      inner join "schema"."Table"  st on sc."table"  = st.id
      inner join "schema"."Schema"  s on st."schema" =  s.id
    where
      not sc."isPublic"
      and st."isPublic"
    ) then
      "schema".raise_exception(
        E'not schema.Column.isPublic in schema.Table.isPublic:\n'
        || array_to_string(
          array(
            select
              s."name" || '.' || st."name" || '.' || sc."name"
            from
                         "schema"."Column" sc
              inner join "schema"."Table"  st on sc."table"  = st.id
              inner join "schema"."Schema"  s on st."schema" =  s.id
            where
              not sc."isPublic"
              and st."isPublic"
            order by
              s."name", st."name", sc."name"
          ),
          E'\n',
          ''
        )
      )
    else
      'schema.Column.isPublic is consistent with schema.Table.isPublic'
    end;
 */

select
  case when exists (
    select
      s."name" as "schema",
      st."name" as "table",
      sc."name" as "column"
    from
                 "schema"."Column" sc
      inner join "schema"."Table"  st on sc."table"  = st.id
      inner join "schema"."Schema"  s on st."schema" =  s.id
    where
      sc."isPublic"
      and not st."isPublic"
    ) then
      "schema".raise_exception(
        E'schema.Column.isPublic in not schema.Table.isPublic:\n'
        || array_to_string(
          array(
            select
              s."name" || '.' || st."name" || '.' || sc."name"
            from
                         "schema"."Column" sc
              inner join "schema"."Table"  st on sc."table"  = st.id
              inner join "schema"."Schema"  s on st."schema" =  s.id
            where
              sc."isPublic"
              and not st."isPublic"
            order by
              s."name", st."name", sc."name"
         ),
          E'\n',
          ''
        )
      )
    else
      'schema.Column.isPublic is consistent with schema.Table.isPublic'
    end;
