create sequence         backup."FileReplicationLog_pkey_seq" cycle;
grant all            on backup."FileReplicationLog_pkey_seq" to aoadmin;
grant select, update on backup."FileReplicationLog_pkey_seq" to aoserv_app;

create table backup."FileReplicationLog" (
  pkey integer
    default nextval('backup."FileReplicationLog_pkey_seq"')
    primary key,
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
  bytes bigint
    not null,
  is_successful boolean
    not null
);
grant all                    on backup."FileReplicationLog" to aoadmin;
grant select, insert, delete on backup."FileReplicationLog" to aoserv_app;