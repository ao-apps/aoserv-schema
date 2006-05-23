create sequence sr_disk_access_pkey_seq cycle;
grant all on sr_disk_access_pkey_seq to aoadmin;
grant select, update on sr_disk_access_pkey_seq to aoserv_app;

create table sr_disk_access (
  pkey integer
    default nextval('sr_disk_access_pkey_seq')
    constraint sr_disk_access_pkey primary key,
  server_report integer not null,
  device_major integer not null,
  device_minor integer not null,
  blocks_min int8 not null,
  blocks_avg float4 not null,
  blocks_max int8 not null,
  rios_min float4 not null,
  rios_avg float4 not null,
  rios_max float4 not null,
  rmerges_min float4 not null,
  rmerges_avg float4 not null,
  rmerges_max float4 not null,
  rsect_min float4 not null,
  rsect_avg float4 not null,
  rsect_max float4 not null,
  ruse_min float4 not null,
  ruse_avg float4 not null,
  ruse_max float4 not null,
  wios_min float4 not null,
  wios_avg float4 not null,
  wios_max float4 not null,
  wmerge_min float4 not null,
  wmerge_avg float4 not null,
  wmerge_max float4 not null,
  wsect_min float4 not null,
  wsect_avg float4 not null,
  wsect_max float4 not null,
  wuse_min float4 not null,
  wuse_avg float4 not null,
  wuse_max float4 not null,
  running_min integer not null,
  running_avg float4 not null,
  running_max integer not null,
  use_min float4 not null,
  use_avg float4 not null,
  use_max float4 not null,
  aveq_min float4 not null,
  aveq_avg float4 not null,
  aveq_max float4 not null,
  unique(server_report, device_major, device_minor)
);
grant all on sr_disk_access to aoadmin;
grant select, insert, delete on sr_disk_access to aoserv_app;
