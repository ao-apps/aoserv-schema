create sequence         backup."BackupReport_pkey_seq" cycle;
grant all            on backup."BackupReport_pkey_seq" to aoadmin;
grant select, update on backup."BackupReport_pkey_seq" to aoserv_app;

create table backup."BackupReport" (
  pkey integer
    default nextval('backup."BackupReport_pkey_seq"')
    primary key,
  server integer
    not null,
  package integer
    not null,
  "date" date
    not null,
  file_count integer
    not null,
  disk_size bigint
    not null
);
grant all                    on backup."BackupReport" to aoadmin;
grant select, insert, delete on backup."BackupReport" to aoserv_app;
