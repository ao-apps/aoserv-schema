create table postgresql."User" (
  username text
    primary key
  check (
    username NOT IN (
      'pg_monitor',
      'pg_read_all_settings',
      'pg_read_all_stats',
      'pg_signal_backend',
      'pg_stat_scan_tables'
    )
  ),
  createdb boolean
    not null
    default false,
  trace boolean
    not null
    default false,
  super boolean
    not null
    default false,
  catupd boolean
    not null
    default false,
  disable_log integer
);
grant all                            on postgresql."User" to aoadmin;
grant select, insert, update, delete on postgresql."User" to aoserv_app;
