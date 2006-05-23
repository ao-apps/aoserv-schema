create sequence postgres_databases_pkey_seq cycle;
grant all on postgres_databases_pkey_seq to aoadmin;
grant select, update on postgres_databases_pkey_seq to aoserv_app;

create table postgres_databases (
  pkey integer
    default nextval('postgres_databases_pkey_seq')
    constraint postgres_databases_pkey primary key,
  name text
    not null,
  postgres_server integer
    not null,
  datdba integer
    not null,
  encoding integer
    not null,
  is_template bool
    not null,
  allow_conn bool
    not null,
  backup_level smallint
    not null,
  backup_retention smallint
    not null,
  unique (name, postgres_server)
);
grant all on postgres_databases to aoadmin;
grant select, insert, update, delete on postgres_databases to aoserv_app;
