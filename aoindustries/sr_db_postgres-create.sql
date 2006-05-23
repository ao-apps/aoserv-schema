create table sr_db_postgres (
  server_report integer
    constraint sr_db_postgres_pkey primary key,
  conn_min integer not null,
  conn_avg float4 not null,
  conn_max integer not null
);
grant all on sr_db_postgres to aoadmin;
grant select, insert, delete on sr_db_postgres to aoserv_app;
