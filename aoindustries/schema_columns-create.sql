create sequence schema_columns_pkey_seq cycle;
grant all on schema_columns_pkey_seq to aoadmin;
grant select on schema_columns_pkey_seq to aoserv_app;

create table schema_columns (
  pkey integer
    default nextval('schema_columns_pkey_seq')
    constraint schema_columns_pkey primary key,
  table_name text
    not null,
  column_name text
    not null,
  index integer
    not null,
  type text
    not null,
  is_nullable bool
    not null,
  is_unique bool
    not null,
  is_public bool
    not null,
  description text
    not null,
  since_version text
    not null,
  last_version text,
  unique(table_name, index)
);
grant all on schema_columns to aoadmin;
grant select on schema_columns to aoserv_app;
