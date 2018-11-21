create sequence         backup.failover_file_schedule_pkey_seq cycle;
grant all            on backup.failover_file_schedule_pkey_seq to aoadmin;
grant select, update on backup.failover_file_schedule_pkey_seq to aoserv_app;

create table failover_file_schedule (
  pkey integer
    default nextval('backup.failover_file_schedule_pkey_seq')
    primary key,
  replication integer
    not null,
  "hour" smallint
    not null
    constraint hour_chk
      check ("hour" >= 0 and "hour" <= 23),
  "minute" smallint
    not null
    constraint minute_chk
      check ("minute" >= 0 and "minute" <= 59),
  enabled boolean
    not null
    default true,
  unique(replication, "hour", "minute")
);
grant all                    on failover_file_schedule to aoadmin;
grant select, insert, delete on failover_file_schedule to aoserv_app;
