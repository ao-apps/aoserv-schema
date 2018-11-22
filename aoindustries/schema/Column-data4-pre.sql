create or replace function "schema".add_column (
  "schema"       name,
  "table"        name,
  "name"         name,
  "type"         name,
  "isNullable"   boolean,
  "isUnique"     boolean,
  "isPublic"     boolean,
  description    text,
  "sinceVersion" text,
  "lastVersion"  text
)
returns text
as '
  insert into "schema"."Column"(
    id,
    "table",
    "name",
    "sinceVersion",
    "lastVersion",
    index,
    "type",
    "isNullable",
    "isUnique",
    "isPublic",
    description
  ) values(
    (select coalesce(max(id), 0) + 1 from "schema"."Column"),
    "schema".get_table_versioned($1, $2, $9, $10),
    $3,
    $9,
    $10,
	(select
      coalesce(max(index), 0) + 1
    from
      "schema"."Column"
    where
      "table"="schema".get_table_versioned($1, $2, $9, $10)),
    "schema".get_type_versioned($4, $9, $10),
    $5,
    $6,
    $7,
    $8
  );
  select $1 || ''.'' || $2 || ''.'' || $3;
'
language 'sql';

delete from "schema"."Column";
