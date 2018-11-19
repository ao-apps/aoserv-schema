create or replace function "schema".get_type_versioned (
  "name" name,
  "sinceVersion" text,
  "lastVersion" text
)
returns integer
as '
  select coalesce(
    (select
      t.id
    from
                 "schema"."Type"               t
      inner join "schema"."AOServProtocol" since on t."sinceVersion" = since.version
      left  join "schema"."AOServProtocol"  last on t."lastVersion"  =  last.version
    where
      t."name" = $1
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
      ''Type not found: '' || coalesce($1, ''NULL'') || '', '' || coalesce($2, ''NULL'') || ''-'' || coalesce($3, ''NULL'')
    )::integer
  );
'
language 'sql';

-- Examples

-- select "schema".get_type_versioned('boolean', '1.0a100', null);
-- Expect: 1

-- select "schema".get_type_versioned('domain_label', '1.69', null);
-- Expect: 32

-- select "schema".get_type_versioned('domain_label', '1.68', null);
-- Except: ERROR:  Type not found: domain_label, 1.68-NULL
