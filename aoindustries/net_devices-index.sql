create index net_devices_device_id_idx on net_devices (
  device_id
);
create unique index net_devices_mac_address_uni on net_devices (
  mac_address
);
