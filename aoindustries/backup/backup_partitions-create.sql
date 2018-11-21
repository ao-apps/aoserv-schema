create sequence backup_partitions_pkey_seq cycle;
grant all            on backup_partitions_pkey_seq to aoadmin;
grant select, update on backup_partitions_pkey_seq to aoserv_app;

create table backup_partitions (
  pkey integer
    default nextval('backup_partitions_pkey_seq')
    primary key,
  ao_server integer not null,
  path text not null,
  enabled bool not null,
  quota_enabled bool not null,
  unique(ao_server, path)
);
grant all            on backup_partitions to aoadmin;
grant select, update on backup_partitions to aoserv_app;
