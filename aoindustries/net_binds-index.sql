create index net_binds_accounting_idx on net_binds (
  accounting
);
create index net_binds_ip_address_idx on net_binds (
  ip_address
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
