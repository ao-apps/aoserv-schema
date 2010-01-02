create unique index postgres_servers_uni on postgres_servers (
  ao_server,
  "name"
);
create unique index postgres_servers_accounting_super on postgres_servers (
  accounting,
  ao_server_resource
);
create unique index postgres_servers_ao_server_super on postgres_servers (
  ao_server,
  ao_server_resource
);
create index postgres_servers_version_idx on postgres_servers (
  version
);
create unique index postgres_servers_net_bind_uni on postgres_servers (
  net_bind
);
create unique index postgres_servers_net_bind_super on postgres_servers (
  ao_server,
  net_bind
);
