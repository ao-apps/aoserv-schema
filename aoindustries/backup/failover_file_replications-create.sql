create sequence failover_file_replications_pkey_seq cycle;
grant all            on failover_file_replications_pkey_seq to aoadmin;
grant select, update on failover_file_replications_pkey_seq to aoserv_app;

create table failover_file_replications (
  pkey integer
    default nextval('failover_file_replications_pkey_seq')
    primary key,
  server integer not null,
  backup_partition integer not null,
  max_bit_rate bigint,
  use_compression boolean not null,
  retention smallint not null,
  connect_address text,
  connect_from inet,
  enabled boolean not null default true,
  quota_gid integer,
  unique(server, backup_partition),
  unique(backup_partition, quota_gid),
  -- Failover mirrors (retention=1) may not be on a quota-enabled partition
  check(not(retention=1 and quota_gid is not null))
);
grant all            on failover_file_replications to aoadmin;
grant select, update on failover_file_replications to aoserv_app;
