create unique index ip_addresses_uni on ip_addresses (
  ip_address,
  net_device
);
create unique index ip_addresses_server_super on ip_addresses (
  server,
  server_resource
);
create index ip_addresses_net_device_idx on ip_addresses (
  server,
  net_device
);
-- Each net device may only have one primary IP address
create unique index ip_addresses_is_primary_uni on ip_addresses (
  net_device
) where net_device is not null and not is_alias;
