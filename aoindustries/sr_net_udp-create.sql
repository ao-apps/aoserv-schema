create table sr_net_udp (
  server_report integer
    constraint sr_net_udp_pkey primary key,
  receive_min float4 not null,
  receive_avg float4 not null,
  receive_max float4 not null,
  unknown_min float4 not null,
  unknown_avg float4 not null,
  unknown_max float4 not null,
  error_min float4 not null,
  error_avg float4 not null,
  error_max float4 not null,
  send_min float4 not null,
  send_avg float4 not null,
  send_max float4 not null
);
grant all on sr_net_udp to aoadmin;
grant select, insert, delete on sr_net_udp to aoserv_app;
