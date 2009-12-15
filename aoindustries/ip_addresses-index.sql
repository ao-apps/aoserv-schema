create index ip_addresses_accounting_idx on ip_addresses (
  accounting
);
create index ip_addresses_net_device_idx on ip_addresses (
  net_device
);
