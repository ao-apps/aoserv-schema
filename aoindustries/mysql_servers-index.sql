create unique index mysql_servers_uni on mysql_servers (
  ao_server,
  "name"
);
create unique index mysql_servers_accounting_super on mysql_servers (
  accounting,
  ao_server_resource
);
create unique index mysql_servers_ao_server_super on mysql_servers (
  ao_server,
  ao_server_resource
);
create index mysql_servers_version_idx on mysql_servers (
  version
);
create unique index mysql_servers_net_bind_uni on mysql_servers (
  net_bind
);
create unique index mysql_servers_net_bind_super on mysql_servers (
  ao_server,
  net_bind
);
