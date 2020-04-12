create or replace function aosh.add_command (
  command        name,
  "schema"       name,
  "table"        name,
  description    text,
  syntax         text,
  "sinceVersion" text,
  "lastVersion"  text
)
returns name
as '
  insert into aosh."Command"(
    command,
    "sinceVersion",
    "lastVersion",
    "table",
    description,
    syntax
  ) values(
    $1 ,
    $6 ,
    $7 ,
    case
      when $3 is null then null
      else "schema".get_table_versioned($2, $3, $6, $7)
    end,
    $4 ,
    $5
  );
  select $1 ;
'
language 'sql';

create or replace function aosh.add_command (
  command        name,
  "table"        name,
  description    text,
  syntax         text,
  "sinceVersion" text,
  "lastVersion"  text
)
returns name
as '
  select aosh.add_command (
    $1 ,
    case when $2 is null then null else ''public'' end,
    $2 ,
    $3 ,
    $4 ,
    $5 ,
    $6
  );
'
language 'sql';

delete from aosh."Command";
