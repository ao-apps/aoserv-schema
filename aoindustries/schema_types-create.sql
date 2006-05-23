create table schema_types (
  type text
    not null
    constraint schema_types_pkey primary key,
  num integer
    not null,
  unique(num)
);
grant all on schema_types to aoadmin;
grant select on schema_types to aoserv_app;
