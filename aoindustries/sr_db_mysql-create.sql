create table sr_db_mysql (
  server_report integer
    constraint sr_db_mysql_pkey primary key,
  conn_min integer not null,
  conn_avg float4 not null,
  conn_max integer not null,
  questions_min float4 not null,
  questions_avg float4 not null,
  questions_max float4 not null,
  slow_queries_min float4 not null,
  slow_queries_avg float4 not null,
  slow_queries_max float4 not null,
  opens_min float4 not null,
  opens_avg float4 not null,
  opens_max float4 not null,
  flush_min float4 not null,
  flush_avg float4 not null,
  flush_max float4 not null,
  open_tables_min integer not null,
  open_tables_avg float4 not null,
  open_tables_max integer not null,
  query_rate_min float4 not null,
  query_rate_avg float4 not null,
  query_rate_max float4 not null
);
grant all on sr_db_mysql to aoadmin;
grant select, insert, delete on sr_db_mysql to aoserv_app;
