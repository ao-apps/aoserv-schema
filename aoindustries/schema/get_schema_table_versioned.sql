create or replace function "schema".get_schema_table_versioned (
  "schema" name,
  "name" name,
  "sinceVersion" text,
  "lastVersion" text
)
returns integer
as '
  select
    st.id
  from
               "schema"."Table"             st
    inner join "schema"."AOServProtocol" since on st."sinceVersion" = since.version
    left  join "schema"."AOServProtocol"  last on st."lastVersion"  =  last.version
  where
    st."schema" = "schema".get_schema_versioned( $1 , $3 , $4 )
    and st."name" = $2
    and (select created from "schema"."AOServProtocol" where version= $3 ) >= since.created
    and (
      case
        when $4 is null then (select created from "schema"."AOServProtocol" order by created desc limit 1)
        else (select created from "schema"."AOServProtocol" where version= $4 )
      end
      <=
      case
        when last.version is null then (select created from "schema"."AOServProtocol" order by created desc limit 1)
        else last.created
      end
    )
  ;
'
language 'sql';

-- Examples
-- select "schema".get_schema_table_versioned('public', 'action_types', '1.0a100', '1.43');
-- Expect: 0
