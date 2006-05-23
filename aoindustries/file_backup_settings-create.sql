create sequence file_backup_settings_pkey_seq cycle;
grant all on file_backup_settings_pkey_seq to aoadmin;
grant select, update on file_backup_settings_pkey_seq to aoserv_app;

create table file_backup_settings (
  pkey smallint
    default nextval('file_backup_settings_pkey_seq')
    constraint file_backup_settings_pkey primary key,
  server integer
    not null,
  path text
    not null,
  package integer
    not null,
  backup_level smallint
    not null,
  backup_retention smallint
    not null,
  recurse bool
    not null,
  unique(server, path)
);
grant all on file_backup_settings to aoadmin;
grant select, insert, update, delete on file_backup_settings to aoserv_app;
