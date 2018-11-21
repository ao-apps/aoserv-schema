create sequence         postgresql.postgres_databases_pkey_seq cycle;
grant all            on postgresql.postgres_databases_pkey_seq to aoadmin;
grant select, update on postgresql.postgres_databases_pkey_seq to aoserv_app;

create table postgres_databases (
  pkey integer
    default nextval('postgresql.postgres_databases_pkey_seq')
    primary key,
  "name" text
    not null,
  postgres_server integer
    not null,
  datdba integer
    not null,
  encoding integer
    not null,
  is_template boolean
    not null,
  allow_conn boolean
    not null,
  enable_postgis boolean
    not null,
  unique ("name", postgres_server)
);
grant all                            on postgres_databases to aoadmin;
grant select, insert, update, delete on postgres_databases to aoserv_app;
