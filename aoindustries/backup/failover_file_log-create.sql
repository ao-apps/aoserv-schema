create sequence failover_file_log_pkey_seq cycle;
grant all            on failover_file_log_pkey_seq to aoadmin;
grant select, update on failover_file_log_pkey_seq to aoserv_app;

create table failover_file_log (
  pkey integer
    default nextval('failover_file_log_pkey_seq')
    constraint failover_file_log_pkey primary key,
  replication integer
    not null,
  start_time timestamp with time zone
    not null,
  end_time timestamp with time zone
    default now()
    not null,
  scanned integer
    not null,
  updated integer
    not null,
  bytes int8
    not null,
  is_successful bool
    not null
);
grant all                            on failover_file_log to aoadmin;
grant select, insert, update, delete on failover_file_log to aoserv_app;
