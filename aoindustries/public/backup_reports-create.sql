create sequence backup_reports_pkey_seq cycle;
grant all            on backup_reports_pkey_seq to aoadmin;
grant select, update on backup_reports_pkey_seq to aoserv_app;

create table backup_reports (
  pkey integer
    default nextval('backup_reports_pkey_seq')
    constraint backup_reports_pkey primary key,
  server integer
    not null,
  package integer
    not null,
  date date
    not null,
  file_count integer
    not null,
  disk_size int8
    not null
);
grant all                            on backup_reports to aoadmin;
grant select, update, insert, delete on backup_reports to aoserv_app;
