create sequence backup."FileReplication_id_seq" cycle;
grant all    on backup."FileReplication_id_seq" to aoadmin;
grant select on backup."FileReplication_id_seq" to aoserv_app;

create table backup."FileReplication" (
  id integer
    default nextval('backup."FileReplication_id_seq"')
    primary key,
  server integer not null,
  backup_partition integer not null,
  max_bit_rate bigint,
  use_compression boolean not null,
  retention smallint not null,
  connect_address text,
  connect_from "com.aoindustries.net"."InetAddress",
  enabled boolean not null default true,
  quota_gid linux."LinuxId",
  unique(server, backup_partition),
  unique(backup_partition, quota_gid),
  -- Failover mirrors (retention=1) may not be on a quota-enabled partition
  check(not(retention=1 and quota_gid is not null))
);
grant all            on backup."FileReplication" to aoadmin;
grant select, update on backup."FileReplication" to aoserv_app;
