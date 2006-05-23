create sequence interbase_backups_pkey_seq cycle;
grant all on interbase_backups_pkey_seq to aoadmin;
grant select, update on interbase_backups_pkey_seq to aoserv_app;

create table interbase_backups (
  pkey integer
    default nextval('interbase_backups_pkey_seq')
    constraint interbase_backups_pkey primary key,
  package integer
    not null,
  db_group_name text
    not null,
  db_name text
    not null,
  ao_server integer
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
grant all on interbase_backups to aoadmin;
grant select, insert, update, delete on interbase_backups to aoserv_app;
