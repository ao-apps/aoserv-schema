create sequence backup_partitions_pkey_seq cycle;
grant all on backup_partitions_pkey_seq to aoadmin;
grant select, update on backup_partitions_pkey_seq to aoserv_app;

create table backup_partitions (
  pkey integer
    default nextval('backup_partitions_pkey_seq')
    constraint backup_partitions_pkey primary key,
  ao_server integer
    not null,
  device text
    not null,
  path text
    not null,
  minimum_free_space int8
    not null,
  desired_free_space int8
    not null,
  enabled bool
    not null,
  fill_order integer
    not null,
  unique(device, ao_server),
  unique(ao_server, path)
);
grant all on backup_partitions to aoadmin;
grant select, update on backup_partitions to aoserv_app;
