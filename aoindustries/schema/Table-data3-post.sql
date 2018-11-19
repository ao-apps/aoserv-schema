drop function "schema".add_table (name,text,boolean,text,text,text);
drop function "schema".add_table (name,name,text,boolean,text,text,text);

analyze "schema"."Table";

/* This will show not public in public, which there is quite a bit of - useful for a review:
select
  case when exists (
    select
      s."name" as "schema",
      st."name" as "table"
    from
                 "schema"."Table"  st
      inner join "schema"."Schema"  s on st."schema" = s.id
    where
      not st."isPublic"
      and s."isPublic"
    ) then
      "schema".raise_exception(
        E'not schema.Table.isPublic in schema.Schema.isPublic:\n'
        || array_to_string(
          array(
            select
              s."name" || '.' || st."name"
            from
                         "schema"."Table" st
              inner join "schema"."Schema" s on st."schema" = s.id
            where
              not st."isPublic"
              and s."isPublic"
          ),
          E'\n',
          ''
        )
      )
    else
      'schema.Table.isPublic is consistent with schema.Schema.isPublic'
    end;
 */

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
      and not s."isPublic"
    ) then
      "schema".raise_exception(
        E'schema.Table.isPublic in not schema.Schema.isPublic:\n'
        || array_to_string(
          array(
            select
              s."name" || '.' || st."name"
            from
                         "schema"."Table" st
              inner join "schema"."Schema" s on st."schema" = s.id
            where
              st."isPublic"
              and not s."isPublic"
          ),
          E'\n',
          ''
        )
      )
    else
      'schema.Table.isPublic is consistent with schema.Schema.isPublic'
    end;
