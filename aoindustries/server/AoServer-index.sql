create index ao_servers_daemon_bind_idx on server."AoServer" (
  daemon_bind
);
create index ao_servers_failover_server_idx on server."AoServer" (
  failover_server
);
create index "ao_servers_daemonDeviceID_idx" on server."AoServer" (
  "daemonDeviceID"
);
create index ao_servers_daemon_connect_bind_idx on server."AoServer" (
  daemon_connect_bind
);
create index ao_servers_jilter_bind_idx on server."AoServer" (
  jilter_bind
);
