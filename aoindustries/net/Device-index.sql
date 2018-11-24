create index "Device_deviceID_fkey" on net."Device" (
  "deviceID"
);
create unique index "Device_mac_address_uni" on net."Device" (
  mac_address
);
