-- Error if public table has no public columns.
-- TODO: Implement as trigger better?
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
