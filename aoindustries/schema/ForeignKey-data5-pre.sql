create or replace function "schema".add_foreign_key (
  "schema" name,
  "table" name,
  "column" name,
  "foreignSchema" name,
  "foreignTable" name,
  "foreignColumn" name,
  "sinceVersion" text,
  "lastVersion" text
)
returns integer
as '
  insert into "schema"."ForeignKey"(
    "column",
    "foreignColumn",
    "sinceVersion",
    "lastVersion"
  ) values(
    "schema".get_column_versioned($1, $2, $3, $7, $8),
    "schema".get_column_versioned($4, $5, $6, $7, $8),
    $7,
    $8
  ) returning id;
'
language 'sql';

create or replace function "schema".add_foreign_key (
  "schema" name,
  "table" name,
  "column" name,
  "foreignTable" name,
  "foreignColumn" name,
  "sinceVersion" text,
  "lastVersion" text
)
returns integer
as '
  select "schema".add_foreign_key (
    $1,
    $2,
    $3,
    $1,
    $4,
    $5,
    $6,
    $7
  );
'
language 'sql';

create or replace function "schema".add_foreign_key (
  "table" name,
  "column" name,
  "foreignTable" name,
  "foreignColumn" name,
  "sinceVersion" text,
  "lastVersion" text
)
returns integer
as '
  select "schema".add_foreign_key (
    ''public'',
    $1,
    $2,
    ''public'',
    $3,
    $4,
    $5,
    $6
  );
'
language 'sql';

select setval('schema."ForeignKey_id_seq"', 1, false);

delete from "schema"."ForeignKey";
