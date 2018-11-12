create index ip_addresses_package_idx on ip_addresses (
  package
);
create index ip_addresses_net_device_idx on ip_addresses (
  net_device
);
create index ip_addresses_pad_ip_address_idx on ip_addresses (pad_ip_address(ip_address));
