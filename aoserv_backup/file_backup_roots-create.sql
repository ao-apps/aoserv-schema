create sequence file_backup_roots_pkey_seq cycle;
grant all on file_backup_roots_pkey_seq to aoadmin;
grant select, update on file_backup_roots_pkey_seq to aoserv_app;

create table file_backup_roots (
  pkey integer
    default nextval('file_backup_roots_pkey_seq')
    constraint file_backup_roots_pkey primary key,
  parent integer
    not null,
  file_path integer
    not null,
  server integer
    not null,
  package integer
    not null,
  unique(file_path, server, package)
);
grant all on file_backup_roots to aoadmin;
grant select, update, insert, delete on file_backup_roots to aoserv_app;
