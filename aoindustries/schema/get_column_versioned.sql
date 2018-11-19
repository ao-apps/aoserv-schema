create or replace function "schema".get_column_versioned (
  "schema" name,
  "table" name,
  "name" name,
  "sinceVersion" text,
  "lastVersion" text
)
returns integer
as '
  select
    sc.id
  from
               "schema"."Column"            sc
    inner join "schema"."AOServProtocol" since on sc."sinceVersion" = since.version
    left  join "schema"."AOServProtocol"  last on sc."lastVersion"  =  last.version
  where
    sc."table" = "schema".get_table_versioned($1, $2, $4, $5)
    and sc."name" = $3
    and (select created from "schema"."AOServProtocol" where version= $4 ) >= since.created
    and (
      case
        when $5 is null then (select created from "schema"."AOServProtocol" order by created desc limit 1)
        when $5 is null then (select created from "schema"."AOServProtocol" order by created desc limit 1)
        else (select created from "schema"."AOServProtocol" where version= $5 )
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
-- select "schema".get_column_versioned('public', 'action_types', 'type', '1.0a100', '1.43');
-- Expect: 1
