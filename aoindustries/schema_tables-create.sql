create table schema_tables (
  name text primary key,
  table_id int not null,
  display text not null,
  is_public bool not null,
  description text not null,
  since_version text not null,
  last_version text,
  unique(table_id)
);
grant all on schema_tables to aoadmin;
grant select on schema_tables to aoserv_app;
