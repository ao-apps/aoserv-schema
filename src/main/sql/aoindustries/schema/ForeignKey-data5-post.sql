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

drop function "schema".add_foreign_key (name,name,name,name,name,name,text,text);

analyze "schema"."ForeignKey";

select
  case when exists (
    select
      ss."name" as "schema",
      st."name" as "table",
      sc."name" as "column",
      fs."name" as "foreignSchema",
      ft."name" as "foreignTable",
      fc."name" as "foreignColumn"
    from
                 "schema"."ForeignKey" fk
      inner join "schema"."Column"     sc on fk."column"        = sc.id
      inner join "schema"."Table"      st on sc."table"         = st.id
      inner join "schema"."Schema"     ss on st."schema"        = ss.id
      inner join "schema"."Column"     fc on fk."foreignColumn" = fc.id
      inner join "schema"."Table"      ft on fc."table"         = ft.id
      inner join "schema"."Schema"     fs on ft."schema"        = fs.id
    where
      sc."isPublic"
      and not fc."isPublic"
    ) then
      "schema".raise_exception(
        E'schema.ForeignKey: column.isPublic while not foreignColumn.isPublic:\n'
        || array_to_string(
          array(
            select
              ss."name" || '.' || st."name" || '.' || sc."name" || ' -> ' || fs."name" || '.' || ft."name" || '.' || fc."name"
            from
                         "schema"."ForeignKey" fk
              inner join "schema"."Column"     sc on fk."column"        = sc.id
              inner join "schema"."Table"      st on sc."table"         = st.id
              inner join "schema"."Schema"     ss on st."schema"        = ss.id
              inner join "schema"."Column"     fc on fk."foreignColumn" = fc.id
              inner join "schema"."Table"      ft on fc."table"         = ft.id
              inner join "schema"."Schema"     fs on ft."schema"        = fs.id
            where
              sc."isPublic"
              and not fc."isPublic"
            order by
              ss."name", st."name", sc."name",
              fs."name", ft."name", fc."name"
          ),
          E'\n',
          ''
        )
      )
    else
      'schema.ForeignKey: column.isPublic is consistent with foreignColumn.isPublic'
    end;
