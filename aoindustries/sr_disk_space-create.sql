create sequence sr_disk_space_pkey_seq cycle;
grant all on sr_disk_space_pkey_seq to aoadmin;
grant select, update on sr_disk_space_pkey_seq to aoserv_app;

create table sr_disk_space (
  pkey integer
    default nextval('sr_disk_space_pkey_seq')
    constraint sr_disk_space_pkey primary key,
  server_report integer not null,
  device_major integer not null,
  device_minor integer not null,
  total_min int8 not null,
  total_avg float4 not null,
  total_max int8 not null,
  used_min int8 not null,
  used_avg float4 not null,
  used_max int8 not null,
  free_min int8 not null,
  free_avg float4 not null,
  free_max int8 not null,
  unique(server_report, device_major, device_minor)
);
grant all on sr_disk_space to aoadmin;
grant select, insert, delete on sr_disk_space to aoserv_app;
