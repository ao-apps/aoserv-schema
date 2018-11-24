create index net_binds_package_idx on net_binds (
  package
);
create index "net_binds_ipAddress_idx" on net_binds (
  "ipAddress"
);
create index net_binds_port_idx on net_binds (
  port
);
create index net_binds_app_protocol_idx on net_binds (
  app_protocol
);
