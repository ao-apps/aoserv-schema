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
  select case when $1 = ''public'' then $2 || ''.'' || $3 else $1 || ''.'' || $2 || ''.'' || $3 end;
'
language 'sql';

create or replace function "schema".add_column (
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
  select "schema".add_column (
    ''public'',
    $1 ,
    $2 ,
    $3 ,
    $4 ,
    $5 ,
    $6 ,
    $7 ,
    $8 ,
    $9
  );
'
language 'sql';

select setval('"schema"."Column_id_seq"', 1, false);

delete from "schema"."Column";
