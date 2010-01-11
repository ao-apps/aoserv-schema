create unique index net_devices_uni on net_devices (
  server,
  device_id
);
create index net_devices_device_id_idx on net_devices (
  device_id
);
create unique index net_devices_mac_address_uni on net_devices (
  mac_address
);
create unique index server_super on net_devices (
  server,
  pkey
);
