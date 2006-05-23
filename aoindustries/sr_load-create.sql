create table sr_load (
  server_report integer
    constraint sr_load_pkey primary key,
  min float4 not null,
  avg float4 not null,
  max float4 not null
);
grant all on sr_load to aoadmin;
grant select, insert, delete on sr_load to aoserv_app;
