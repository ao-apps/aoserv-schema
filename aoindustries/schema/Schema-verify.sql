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
-- TODO: Implement as trigger better?
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
