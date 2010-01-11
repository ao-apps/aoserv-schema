create sequence failover_file_log_pkey_seq cycle;
grant all on failover_file_log_pkey_seq to aoadmin;
grant select, update on failover_file_log_pkey_seq to aoserv_app;

create table failover_file_log (
  pkey integer default nextval('failover_file_log_pkey_seq') primary key,
  replication integer not null,
  start_time timestamp not null,
  end_time timestamp default now() not null,
  scanned integer not null check (scanned>=0),
  updated integer not null check (updated>=0),
  bytes int8 not null check (bytes>=0),
  is_successful bool not null,
  check (end_time>=start_time)
);
grant all on failover_file_log to aoadmin;
grant select, insert, update, delete on failover_file_log to aoserv_app;
