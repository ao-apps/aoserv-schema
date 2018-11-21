create or replace function "schema".add_table (
  "schema" name,
  "table" name,
  display text,
  "isPublic" boolean,
  description text,
  "sinceVersion" text,
  "lastVersion" text
)
returns text
as '
  insert into "schema"."Table"(
    id,
    "schema",
    "name",
    "sinceVersion",
    "lastVersion",
    display,
    "isPublic",
    description
  ) values(
    (select count(*) from "schema"."Table"),
    "schema".get_schema_versioned( $1 , $6 , $7),
    $2 ,
    $6 ,
    $7 ,
    $3 ,
    $4 ,
    $5
  );
  select $1 || ''.'' || $2;
'
language 'sql';

delete from "schema"."Table";
