create or replace function "schema".add_column (
  "schema" name,
  "table" name,
  "name" name,
  "type" name,
  "isNullable" boolean,
  "isUnique" boolean,
  "isPublic" boolean,
  description text,
  "sinceVersion" text,
  "lastVersion" text
)
returns text
as '
  insert into "schema"."Column"(
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
    "schema".get_table_versioned($1, $2, $9, $10),
    $3,
    $9,
    $10,
	(select
      count(*)::smallint
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

select setval('"schema"."Column_id_seq"', 1, false);

delete from "schema"."Column";
