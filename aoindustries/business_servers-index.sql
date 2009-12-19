create unique index business_servers_uni on business_servers (
  accounting,
  server
);
create unique index business_servers_accounting_super on business_servers (
  accounting,
  pkey
);
create unique index business_servers_server_super on business_servers (
  server,
  pkey
);
