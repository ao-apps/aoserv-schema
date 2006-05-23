create sequence sr_swap_size_pkey_seq cycle;
grant all on sr_swap_size_pkey_seq to aoadmin;
grant select, update on sr_swap_size_pkey_seq to aoserv_app;

create table sr_swap_size (
  pkey integer
    default nextval('sr_swap_size_pkey_seq')
    constraint sr_swap_size_pkey primary key,
  server_report integer not null,
  device_major integer not null,
  device_minor integer not null,
  total_min integer not null,
  total_avg float4 not null,
  total_max integer not null,
  used_min integer not null,
  used_avg float4 not null,
  used_max integer not null,
  unique(server_report, device_major, device_minor)
);
grant all on sr_swap_size to aoadmin;
grant select, insert, delete on sr_swap_size to aoserv_app;
