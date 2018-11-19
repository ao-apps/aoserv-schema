drop function "schema".add_foreign_key (name,name,name,name,text,text);
drop function "schema".add_foreign_key (name,name,name,name,name,text,text);
drop function "schema".add_foreign_key (name,name,name,name,name,name,text,text);

analyze "schema"."ForeignKey";

select
  case when exists (
    select
      ss."name" as "schema",
      st."name" as "table",
      sc."name" as "column",
      fs."name" as "foreignSchema",
      ft."name" as "foreignTable",
      fc."name" as "foreignColumn"
    from
                 "schema"."ForeignKey" fk
      inner join "schema"."Column"     sc on fk."column"        = sc.id
      inner join "schema"."Table"      st on sc."table"         = st.id
      inner join "schema"."Schema"     ss on st."schema"        = ss.id
      inner join "schema"."Column"     fc on fk."foreignColumn" = fc.id
      inner join "schema"."Table"      ft on fc."table"         = ft.id
      inner join "schema"."Schema"     fs on ft."schema"        = fs.id
    where
      sc."isPublic"
      and not fc."isPublic"
    ) then
      "schema".raise_exception(
        E'schema.ForeignKey: column.isPublic while not foreignColumn.isPublic:\n'
        || array_to_string(
          array(
            select
              ss."name" || '.' || st."name" || '.' || sc."name" || ' -> ' || fs."name" || '.' || ft."name" || '.' || fc."name"
            from
                         "schema"."ForeignKey" fk
              inner join "schema"."Column"     sc on fk."column"        = sc.id
              inner join "schema"."Table"      st on sc."table"         = st.id
              inner join "schema"."Schema"     ss on st."schema"        = ss.id
              inner join "schema"."Column"     fc on fk."foreignColumn" = fc.id
              inner join "schema"."Table"      ft on fc."table"         = ft.id
              inner join "schema"."Schema"     fs on ft."schema"        = fs.id
            where
              sc."isPublic"
              and not fc."isPublic"
          ),
          E'\n',
          ''
        )
      )
    else
      'schema.ForeignKey: column.isPublic is consistent with foreignColumn.isPublic'
    end;
