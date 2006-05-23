create sequence sr_disk_mdstat_pkey_seq cycle;
grant all on sr_disk_mdstat_pkey_seq to aoadmin;
grant select, update on sr_disk_mdstat_pkey_seq to aoserv_app;

create table sr_disk_mdstat (
  pkey integer
    default nextval('sr_disk_mdstat_pkey_seq')
    constraint sr_disk_mdstat_pkey primary key,
  server_report integer not null,
  device_major integer not null,
  device_minor integer not null,
  total_partitions_min integer not null,
  total_partitions_avg float4 not null,
  total_partitions_max integer not null,
  active_partitions_min integer not null,
  active_partitions_avg float4 not null,
  active_partitions_max integer not null,
  rebuild_percent_min float4,
  rebuild_percent_avg float4,
  rebuild_percent_max float4,
  rebuild_rate_min integer,
  rebuild_rate_avg float4,
  rebuild_rate_max integer,
  unique(server_report, device_major, device_minor)
);
grant all on sr_disk_mdstat to aoadmin;
grant select, insert, delete on sr_disk_mdstat to aoserv_app;
