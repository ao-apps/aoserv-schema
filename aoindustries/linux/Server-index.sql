create index "Server_daemon_bind_fkey" on linux."Server" (
  daemon_bind
);
create index "Server_failover_server_fkey" on linux."Server" (
  failover_server
);
create index "Server_daemonDeviceId_fkey" on linux."Server" (
  "daemonDeviceId"
);
create index "Server_daemon_connect_bind_fkey" on linux."Server" (
  daemon_connect_bind
);
create index "Server_jilter_bind_fkey" on linux."Server" (
  jilter_bind
);
create index "Server_time_zone_fkey" on linux."Server" (
  time_zone
);
