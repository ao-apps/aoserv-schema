create or replace function "schema".get_schema_versioned (
  "name"         name,
  "sinceVersion" text,
  "lastVersion"  text
)
returns integer
as '
  select coalesce(
    (select
      s.id
    from
                 "schema"."Schema"             s
      inner join "schema"."AOServProtocol" since on s."sinceVersion" = since.version
      left  join "schema"."AOServProtocol"  last on s."lastVersion"  =  last.version
    where
      s."name" = $1
      and (select created from "schema"."AOServProtocol" where version= $2 ) >= since.created
      and (
        case
          when $3 is null then (select created from "schema"."AOServProtocol" order by created desc limit 1)
          else (select created from "schema"."AOServProtocol" where version= $3 )
        end
        <=
        case
          when last.version is null then (select created from "schema"."AOServProtocol" order by created desc limit 1)
          else last.created
        end
      )
    ),
    "schema".raise_exception(
      ''Schema not found: '' || coalesce($1, ''NULL'') || '', '' || coalesce($2, ''NULL'') || ''-'' || coalesce($3, ''NULL'')
    )::integer
  );
'
language 'sql'
stable;

-- Examples

-- select "schema".get_schema_versioned('distribution', '1.0a100', null);
-- Expect: 0

-- select "schema".get_schema_versioned('monitoring', '1.81.18', null);
-- Expect: 4

-- select "schema".get_schema_versioned('monitoring', '1.81.17', null);
-- Expect: ERROR:  Schema not found: monitoring, 1.81.17-NULL
