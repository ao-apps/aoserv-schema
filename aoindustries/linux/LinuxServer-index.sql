create index "LinuxServer_daemon_bind_fkey" on linux."LinuxServer" (
  daemon_bind
);
create index "LinuxServer_failover_server_fkey" on linux."LinuxServer" (
  failover_server
);
create index "LinuxServer_daemonDeviceID_fkey" on linux."LinuxServer" (
  "daemonDeviceID"
);
create index "LinuxServer_daemon_connect_bind_fkey" on linux."LinuxServer" (
  daemon_connect_bind
);
create index "LinuxServer_jilter_bind_fkey" on linux."LinuxServer" (
  jilter_bind
);
create index "LinuxServer_time_zone_fkey" on linux."LinuxServer" (
  time_zone
);
