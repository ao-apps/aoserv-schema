create index "net_devices_deviceID_idx" on net_devices (
  "deviceID"
);
create unique index net_devices_mac_address_uni on net_devices (
  mac_address
);
