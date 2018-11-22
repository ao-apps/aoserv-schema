create sequence backup."BackupPartition_pkey_seq" cycle;
grant all    on backup."BackupPartition_pkey_seq" to aoadmin;
grant select on backup."BackupPartition_pkey_seq" to aoserv_app;

create table backup."BackupPartition" (
  pkey integer
    default nextval('backup."BackupPartition_pkey_seq"')
    primary key,
  ao_server integer not null,
  "path" text not null,
  enabled boolean not null,
  quota_enabled boolean not null,
  unique(ao_server, "path")
);
grant all    on backup."BackupPartition" to aoadmin;
grant select on backup."BackupPartition" to aoserv_app;
