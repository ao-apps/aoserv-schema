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
  select case when $1 = ''public'' then $2 else $1 || ''.'' || $2 end;
'
language 'sql';

create or replace function "schema".add_table (
  "table" name,
  display text,
  "isPublic" boolean,
  description text,
  "sinceVersion" text,
  "lastVersion" text
)
returns text
as '
  select "schema".add_table (
    ''public'',
    $1 ,
    $2 ,
    $3 ,
    $4 ,
    $5 ,
    $6
  );
'
language 'sql';

delete from "schema"."Table";
