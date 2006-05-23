create table schema_tables (
  name text
    not null
    constraint schema_tables_pkey primary key,
  table_id int
    not null,
  display text
    not null,
  is_public bool
    not null,
  description text
    not null,
  dataverse_editor text,
  since_version text
    not null,
  last_version text,
  default_order_by text,
  unique(table_id)
);
grant all on schema_tables to aoadmin;
grant select on schema_tables to aoserv_app;
