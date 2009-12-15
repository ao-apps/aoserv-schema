create unique index mysql_servers_uni on mysql_servers (
  ao_server,
  "name"
);
create index mysql_servers_version_idx on mysql_servers (
  version
);
create index mysql_servers_accounting_idx on mysql_servers (
  accounting
);
