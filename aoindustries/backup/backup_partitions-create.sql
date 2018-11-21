create sequence         backup.backup_partitions_pkey_seq cycle;
grant all            on backup.backup_partitions_pkey_seq to aoadmin;
grant select, update on backup.backup_partitions_pkey_seq to aoserv_app;

create table backup_partitions (
  pkey integer
    default nextval('backup.backup_partitions_pkey_seq')
    primary key,
  ao_server integer not null,
  "path" text not null,
  enabled boolean not null,
  quota_enabled boolean not null,
  unique(ao_server, "path")
);
grant all            on backup_partitions to aoadmin;
grant select, update on backup_partitions to aoserv_app;
