create table schema_types (
  "type" text
    not null
    constraint schema_types_pkey primary key,
  num integer
    not null,
  since_version text
    not null,
  last_version text,
  unique(num)
);
grant all on schema_types to aoadmin;
grant select on schema_types to aoserv_app;
