create table sr_processes (
  server_report integer
    constraint sr_processes_pkey primary key,
  total_sleep_min integer,
  total_sleep_avg float4,
  total_sleep_max integer,
  user_sleep_min integer not null,
  user_sleep_avg float4 not null,
  user_sleep_max integer not null,
  total_run_min integer,
  total_run_avg float4,
  total_run_max integer,
  user_run_min integer not null,
  user_run_avg float4 not null,
  user_run_max integer not null,
  total_zombie_min integer,
  total_zombie_avg float4,
  total_zombie_max integer,
  user_zombie_min integer not null,
  user_zombie_avg float4 not null,
  user_zombie_max integer not null,
  total_trace_min integer,
  total_trace_avg float4,
  total_trace_max integer,
  user_trace_min integer not null,
  user_trace_avg float4 not null,
  user_trace_max integer not null,
  total_uninterruptible_min integer,
  total_uninterruptible_avg float4,
  total_uninterruptible_max integer,
  user_uninterruptible_min integer not null,
  user_uninterruptible_avg float4 not null,
  user_uninterruptible_max integer not null,
  total_unknown_min integer,
  total_unknown_avg float4,
  total_unknown_max integer,
  user_unknown_min integer not null,
  user_unknown_avg float4 not null,
  user_unknown_max integer not null,
  rate_min float4,
  rate_avg float4,
  rate_max float4,
  context_min float4,
  context_avg float4,
  context_max float4
);
grant all on sr_processes to aoadmin;
grant select, insert, delete on sr_processes to aoserv_app;
