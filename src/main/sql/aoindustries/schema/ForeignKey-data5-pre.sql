create or replace function "schema".add_foreign_key (
  "schema"        name,
  "table"         name,
  "column"        name,
  "foreignSchema" name,
  "foreignTable"  name,
  "foreignColumn" name,
  "sinceVersion"  text,
  "lastVersion"   text
)
returns integer
as '
  insert into "schema"."ForeignKey"(
    id,
    "column",
    "foreignColumn",
    "sinceVersion",
    "lastVersion"
  ) values(
    (select coalesce(max(id), 0) + 1 from "schema"."ForeignKey"),
    "schema".get_column_versioned($1, $2, $3, $7, $8),
    "schema".get_column_versioned($4, $5, $6, $7, $8),
    $7,
    $8
  ) returning id;
'
language 'sql';

delete from "schema"."ForeignKey";
