create index ao_servers_daemon_bind_idx on ao_servers (
  daemon_bind
);
create index ao_servers_failover_server_idx on ao_servers (
  failover_server
);
create index "ao_servers_daemonDeviceID_idx" on ao_servers (
  "daemonDeviceID"
);
create index ao_servers_daemon_connect_bind_idx on ao_servers (
  daemon_connect_bind
);
create index ao_servers_jilter_bind_idx on ao_servers (
  jilter_bind
);
