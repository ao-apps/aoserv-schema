create table sr_paging (
  server_report integer
    constraint sr_paging_pkey primary key,
  in_min float4 not null,
  in_avg float4 not null,
  in_max float4 not null,
  out_min float4 not null,
  out_avg float4 not null,
  out_max float4 not null
);
grant all on sr_paging to aoadmin;
grant select, insert, delete on sr_paging to aoserv_app;
