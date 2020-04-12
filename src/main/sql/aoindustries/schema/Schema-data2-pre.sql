create or replace function "schema".add_schema (
  "name"         name,
  "sinceVersion" text,
  "lastVersion"  text,
  display        text,
  "isPublic"     boolean,
  description    text
)
returns name
as '
  insert into "schema"."Schema"(
    id,
    "name",
    "sinceVersion",
    "lastVersion",
    display,
    "isPublic",
    description
  ) values(
    (select coalesce(max(id), 0) + 1 from "schema"."Schema"),
    $1,
    $2,
    $3,
    $4,
    $5,
    $6
  );
  select $1;
'
language 'sql';

delete from "schema"."Schema";
