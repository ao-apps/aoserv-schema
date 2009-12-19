create unique index net_binds_uni on net_binds (
  ip_address,
  server,
  port,
  net_protocol
);
create index net_binds_accounting_idx on net_binds (
  accounting,
  business_server
);
create index net_binds_server_idx on net_binds (
  server,
  business_server
);
create index net_binds_port_idx on net_binds (
  port
);
create index net_binds_net_protocol_idx on net_binds (
  net_protocol
);
create index net_binds_app_protocol_idx on net_binds (
  app_protocol
);
-- Superkeys for additional integrity constraints
create unique index net_binds_accounting_super on net_binds (
  accounting,
  pkey
);
create unique index net_binds_server_super on net_binds (
  server,
  pkey
);
