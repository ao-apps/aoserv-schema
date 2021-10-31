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

-- Error schema with no tables
select
  case when exists (
    select
      s."name" as "schema"
    from
      "schema"."Schema" s
    where
      not exists (select * from "schema"."Table" st where st."schema"=s.id)
    ) then
      "schema".raise_exception(
        E'schema.Schema without any tables:\n'
        || array_to_string(
          array(
            select
              s."name"
            from
              "schema"."Schema" s
            where
              not exists (select * from "schema"."Table" st where st."schema"=s.id)
            order by
              s."name"
          ),
          E'\n',
          ''
        )
      )
    else
      'schema.Schema all have tables'
    end;

-- Error if public schema has no public tables.
select
  case when exists (
    select
      s."name" as "schema"
    from
      "schema"."Schema" s
    where
      s."isPublic"
      and not exists (select * from "schema"."Table" st where st."schema"=s.id and st."isPublic")
    ) then
      "schema".raise_exception(
        E'schema.Schema.isPublic while has no schema.Table.isPublic:\n'
        || array_to_string(
          array(
            select
              s."name"
            from
              "schema"."Schema" s
            where
              s."isPublic"
              and not exists (select * from "schema"."Table" st where st."schema"=s.id and st."isPublic")
            order by
              s."name"
          ),
          E'\n',
          ''
        )
      )
    else
      'schema.Schema.isPublic is consistent with schema.Table.isPublic'
    end;
