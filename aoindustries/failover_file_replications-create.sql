create sequence failover_file_replications_pkey_seq cycle;
grant all on failover_file_replications_pkey_seq to aoadmin;
grant select, update on failover_file_replications_pkey_seq to aoserv_app;

create table failover_file_replications (
  pkey integer
    default nextval('failover_file_replications_pkey_seq')
    constraint failover_file_replications_pk primary key,
  from_server integer
    not null,
  to_server integer
    not null,
  max_bit_rate integer,
  last_start_time timestamp,
  use_compression bool not null,
  retention smallint not null,
  connect_address text,
  enabled bool not null,
  to_path text not null,
  chunk_always bool not null,
  unique(from_server, to_server)
);
grant all on failover_file_replications to aoadmin;
grant select, update on failover_file_replications to aoserv_app;
