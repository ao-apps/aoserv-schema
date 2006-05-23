create sequence postgres_backups_pkey_seq cycle;
grant all on postgres_backups_pkey_seq to aoadmin;
grant select, update on postgres_backups_pkey_seq to aoserv_app;

create table postgres_backups (
  pkey integer
    default nextval('postgres_backups_pkey_seq')
    constraint postgres_backups_pkey primary key,
  package integer
    not null,
  db_name text
    not null,
  postgres_server integer
    not null,
  start_time timestamp
    not null,
  end_time timestamp
    not null,
  backup_data integer
    not null,
  backup_level smallint
    not null,
  backup_retention smallint
    not null
);
grant all on postgres_backups to aoadmin;
grant select, insert, update, delete on postgres_backups to aoserv_app;
