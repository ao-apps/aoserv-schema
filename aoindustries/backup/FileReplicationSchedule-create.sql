create sequence         backup."FileReplicationSchedule_id_seq" cycle;
grant all            on backup."FileReplicationSchedule_id_seq" to aoadmin;
grant select, update on backup."FileReplicationSchedule_id_seq" to aoserv_app;

create table backup."FileReplicationSchedule" (
  id integer
    default nextval('backup."FileReplicationSchedule_id_seq"')
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
grant all                    on backup."FileReplicationSchedule" to aoadmin;
grant select, insert, delete on backup."FileReplicationSchedule" to aoserv_app;
