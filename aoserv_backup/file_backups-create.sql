create sequence file_backups_pkey_seq cycle;
grant all on file_backups_pkey_seq to aoadmin;
grant select, update on file_backups_pkey_seq to aoserv_app;

create table file_backups (
  pkey integer
    default nextval('file_backups_pkey_seq')
    constraint file_backups_pkey primary key,
  server integer
    not null,
  file_path integer
    not null,
  device smallint,
  inode int8,
  package integer
    not null,
  mode int8
    not null,
  uid integer,
  gid integer,
  backup_data integer,
  create_time timestamp
    not null,
  modify_time timestamp,
  remove_time timestamp,
  backup_level smallint
    not null,
  backup_retention smallint
    not null,
  symlink_target text,
  device_id int8
);
grant all on file_backups to aoadmin;
grant select, update, insert, delete on file_backups to aoserv_app;
