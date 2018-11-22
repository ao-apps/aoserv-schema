create sequence         backup."FileReplicationSetting_pkey_seq" cycle;
grant all            on backup."FileReplicationSetting_pkey_seq" to aoadmin;
grant select, update on backup."FileReplicationSetting_pkey_seq" to aoserv_app;

create table backup."FileReplicationSetting" (
  pkey smallint
    default nextval('backup."FileReplicationSetting_pkey_seq"')
    primary key,
  replication integer
    not null,
  "path" text
    not null,
  backup_enabled boolean
    not null,
  required boolean
    not null,
  unique(replication, "path"),
  check (
    backup_enabled or not required
  )
);
grant all                            on backup."FileReplicationSetting" to aoadmin;
grant select, insert, update, delete on backup."FileReplicationSetting" to aoserv_app;