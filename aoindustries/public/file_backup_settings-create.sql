create sequence file_backup_settings_pkey_seq cycle;
grant all on file_backup_settings_pkey_seq to aoadmin;
grant select, update on file_backup_settings_pkey_seq to aoserv_app;

create table file_backup_settings (
  pkey smallint
    default nextval('file_backup_settings_pkey_seq')
    constraint file_backup_settings_pkey primary key,
  replication integer
    not null,
  "path" text
    not null,
  backup_enabled boolean
    not null,
  required boolean
    not null,
  unique(replication, "path"),
  check (
    backup_enabled or not required
  )
);
grant all on file_backup_settings to aoadmin;
grant select, insert, update, delete on file_backup_settings to aoserv_app;