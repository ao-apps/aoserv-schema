create sequence mysql_backups_pkey_seq cycle;
grant all on mysql_backups_pkey_seq to aoadmin;
grant select, update on mysql_backups_pkey_seq to aoserv_app;

create table mysql_backups (
  pkey integer
    default nextval('mysql_backups_pkey_seq')
    constraint mysql_backups_pkey primary key,
  package integer
    not null,
  db_name text
    not null,
  mysql_server integer
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
grant all on mysql_backups to aoadmin;
grant select, insert, update, delete on mysql_backups to aoserv_app;
