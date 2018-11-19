drop function "schema".add_column (name,name,name,boolean,boolean,boolean,text,text,text);
drop function "schema".add_column (name,name,integer,name,boolean,boolean,boolean,text,text,text);
drop function "schema".add_column (name,name,name,name,boolean,boolean,boolean,text,text,text);
drop function "schema".add_column (name,name,name,integer,name,boolean,boolean,boolean,text,text,text);

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
          ),
          E'\n',
          ''
        )
      )
    else
      'schema.Column.isPublic is consistent with schema.Table.isPublic'
    end;
