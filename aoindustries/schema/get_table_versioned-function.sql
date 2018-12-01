create or replace function "schema".get_table_versioned (
  "schema"       name,
  "name"         name,
  "sinceVersion" text,
  "lastVersion"  text
)
returns integer
as '
  select coalesce(
    (select
      st.id
    from
                 "schema"."Table"             st
      inner join "schema"."AoservProtocol" since on st."sinceVersion" = since.version
      left  join "schema"."AoservProtocol"  last on st."lastVersion"  =  last.version
    where
      st."schema" = "schema".get_schema_versioned( $1 , $3 , $4 )
      and st."name" = $2
      and (select created from "schema"."AoservProtocol" where version= $3 ) >= since.created
      and (
        case
          when $4 is null then (select created from "schema"."AoservProtocol" order by created desc limit 1)
          else (select created from "schema"."AoservProtocol" where version= $4 )
        end
        <=
        case
          when last.version is null then (select created from "schema"."AoservProtocol" order by created desc limit 1)
          else last.created
        end
      )
    ),
    "schema".raise_exception(
      ''Table not found: '' || coalesce($1, ''NULL'') || ''.'' || coalesce($2, ''NULL'') || '', '' || coalesce($3, ''NULL'') || ''-'' || coalesce($4, ''NULL'')
    )::integer
  );
'
language 'sql'
stable;

-- Examples

-- select "schema".get_table_versioned('ticket', 'action_types', '1.0a100', '1.43');
-- Expect: 0

-- select "schema".get_table_versioned('net', 'ip_reputation_limiter_limits', '1.66', null);
-- Expect: 102

-- select "schema".get_table_versioned('net', 'ip_reputation_limiter_limits', '1.65', null);
-- Expect: ERROR:  Table not found: public.ip_reputation_limiter_limits, 1.65-NULL
