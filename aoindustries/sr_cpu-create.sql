create sequence sr_cpu_pkey_seq cycle;
grant all on sr_cpu_pkey_seq to aoadmin;
grant select, update on sr_cpu_pkey_seq to aoserv_app;

create table sr_cpu (
  pkey integer
    default nextval('sr_cpu_pkey_seq')
    constraint sr_cpu_pkey primary key,
  server_report integer 
    not null,
  cpu_number integer
    not null,
  user_min float4 not null,
  user_avg float4 not null,
  user_max float4 not null,
  nice_min float4 not null,
  nice_avg float4 not null,
  nice_max float4 not null,
  sys_min float4 not null,
  sys_avg float4 not null,
  sys_max float4 not null,
  unique(server_report, cpu_number)
);
grant all on sr_cpu to aoadmin;
grant select, insert, delete on sr_cpu to aoserv_app;
