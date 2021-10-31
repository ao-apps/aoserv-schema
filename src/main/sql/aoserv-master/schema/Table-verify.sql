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

-- Error if public table has no public columns.
select
  case when exists (
    select
      s."name" as "schema",
      st."name" as "table"
    from
                 "schema"."Table"  st
      inner join "schema"."Schema"  s on st."schema" = s.id
    where
      st."isPublic"
      and not exists (select * from "schema"."Column" sc where sc."table"=st.id and sc."isPublic")
    ) then
      "schema".raise_exception(
        E'schema.Table.isPublic while has no schema.Column.isPublic:\n'
        || array_to_string(
          array(
            select
              s."name" || '.' || st."name"
            from
                         "schema"."Table" st
              inner join "schema"."Schema" s on st."schema" = s.id
            where
              st."isPublic"
              and not exists (select * from "schema"."Column" sc where sc."table"=st.id and sc."isPublic")
            order by
              s."name", st."name"
          ),
          E'\n',
          ''
        )
      )
    else
      'schema.Table.isPublic is consistent with schema.Column.isPublic'
    end;
