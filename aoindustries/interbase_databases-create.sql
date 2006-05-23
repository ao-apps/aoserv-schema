create sequence interbase_databases_pkey_seq cycle;
grant all on interbase_databases_pkey_seq to aoadmin;
grant select, update on interbase_databases_pkey_seq to aoserv_app;

create table interbase_databases (
  pkey integer
    default nextval('interbase_databases_pkey_seq')
    constraint interbase_databases_pkey primary key,
  name text
    not null,
  db_group integer
    not null,
  datdba integer
    not null,
  backup_level smallint
    not null,
  backup_retention smallint
    not null,
  unique(name, db_group)
);
grant all on interbase_databases to aoadmin;
grant select, update, insert, delete on interbase_databases to aoserv_app;
