create unique index ao_servers_daemon_bind_uni on ao_servers (
  server,
  daemon_bind
);
create index ao_servers_failover_server_idx on ao_servers (
  failover_server
);
create index ao_servers_daemon_device_id_idx on ao_servers (
  daemon_device_id
);
create unique index ao_servers_daemon_connect_bind_uni on ao_servers (
  daemon_connect_bind
);
create unique index ao_servers_jilter_bind_uni on ao_servers (
  server,
  jilter_bind
);
