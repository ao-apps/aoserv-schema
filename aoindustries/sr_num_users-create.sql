create table sr_num_users (
  server_report integer
    constraint sr_num_users_pkey primary key,
  min integer not null,
  avg float4 not null,
  max integer not null
);
grant all on sr_num_users to aoadmin;
grant select, insert, delete on sr_num_users to aoserv_app;
