create sequence backup."BackupPartition_id_seq" cycle;
grant all    on backup."BackupPartition_id_seq" to aoadmin;
grant select on backup."BackupPartition_id_seq" to aoserv_app;

create table backup."BackupPartition" (
  id integer
    default nextval('backup."BackupPartition_id_seq"')
    primary key,
  ao_server integer not null,
  -- TODO: "com.aoindustries.aoserv.types"."UnixPath"
  "path" "com.aoindustries.net"."Path" not null,
  enabled boolean not null,
  quota_enabled boolean not null,
  unique(ao_server, "path")
);
grant all    on backup."BackupPartition" to aoadmin;
grant select on backup."BackupPartition" to aoserv_app;
