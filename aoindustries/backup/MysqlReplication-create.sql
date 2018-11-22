create sequence         backup."MysqlReplication_pkey_seq" cycle;
grant all            on backup."MysqlReplication_pkey_seq" to aoadmin;
grant select, update on backup."MysqlReplication_pkey_seq" to aoserv_app;

create table backup."MysqlReplication" (
  pkey integer
    default nextval('backup."MysqlReplication_pkey_seq"')
    primary key,
  ao_server integer,
  replication integer,
  check ( -- Must be one or the other
    (ao_server is not null and replication is null)
    or (ao_server is null and replication is not null)
  ),
  mysql_server integer
    not null,
  monitoring_seconds_behind_low integer check (monitoring_seconds_behind_low is null or monitoring_seconds_behind_low>0),
  monitoring_seconds_behind_medium integer check (monitoring_seconds_behind_medium is null or monitoring_seconds_behind_low is not null and monitoring_seconds_behind_medium>monitoring_seconds_behind_low),
  monitoring_seconds_behind_high integer check (monitoring_seconds_behind_high is null or monitoring_seconds_behind_medium is not null and monitoring_seconds_behind_high>monitoring_seconds_behind_medium),
  monitoring_seconds_behind_critical integer check (monitoring_seconds_behind_critical is null or monitoring_seconds_behind_high is not null and monitoring_seconds_behind_critical>monitoring_seconds_behind_high),
  max_alert_level text
    not null
    default 'UNKNOWN'
    check (
      max_alert_level in ('NONE', 'LOW', 'MEDIUM', 'HIGH', 'CRITICAL', 'UNKNOWN')
    )
);
grant all    on backup."MysqlReplication" to aoadmin;
grant select on backup."MysqlReplication" to aoserv_app;
