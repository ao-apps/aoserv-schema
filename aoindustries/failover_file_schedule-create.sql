create sequence failover_file_schedule_pkey_seq cycle;
grant all on failover_file_schedule_pkey_seq to aoadmin;
grant select, update on failover_file_schedule_pkey_seq to aoserv_app;

create table failover_file_schedule (
  pkey integer default nextval('failover_file_schedule_pkey_seq') primary key,
  replication integer not null,
  hour smallint not null check (hour between 0 and 23),
  minute smallint not null check (minute between 0 and 59),
  enabled bool not null,
  unique(replication, hour, minute)
);
grant all on failover_file_schedule to aoadmin;
grant select, insert, delete on failover_file_schedule to aoserv_app;
