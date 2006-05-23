create table sr_swap_rate (
  server_report integer
    constraint sr_swap_rate_pkey primary key,
  in_min float4 not null,
  in_avg float4 not null,
  in_max float4 not null,
  out_min float4 not null,
  out_avg float4 not null,
  out_max float4 not null
);
grant all on sr_swap_rate to aoadmin;
grant select, insert, delete on sr_swap_rate to aoserv_app;
