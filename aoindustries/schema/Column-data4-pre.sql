create or replace function "schema".add_column (
  "schema" name,
  "table" name,
  "name" name,
  index integer,
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
    "schema".get_table_versioned($1, $2, $10, $11),
    $3,
    $10,
    $11,
    $4::smallint,
    "schema".get_type_versioned($5, $10, $11),
    $6,
    $7,
    $8,
    $9
  );
  select case when $1 = ''public'' then $2 || ''.'' || $3 else $1 || ''.'' || $2 || ''.'' || $3 end;
'
language 'sql';

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
  select "schema".add_column (
    $1 ,
    $2 ,
    $3 ,
	(select
      count(*)::integer
    from
      "schema"."Column"
    where
      "table"="schema".get_table_versioned($1, $2, $9, $10)),
    $4 ,
    $5 ,
    $6 ,
    $7 ,
    $8 ,
    $9 ,
    $10
  );
'
language 'sql';

create or replace function "schema".add_column (
  "table" name,
  "name" name,
  index integer,
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
    $9 ,
    $10
  );
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
    $1,
    $2,
	(select
      count(*)::integer
    from
      "schema"."Column"
    where
      "table"="schema".get_table_versioned(''public'', $1, $8, $9)),
    $3,
    $4,
    $5,
    $6,
    $7,
    $8,
    $9
  );
'
language 'sql';

select setval('"schema"."Column_id_seq"', 1, false);

delete from "schema"."Column";
