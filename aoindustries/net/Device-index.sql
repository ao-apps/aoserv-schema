create index "Device_deviceId_fkey" on net."Device" (
  "deviceId"
);
create unique index "Device_mac_address_uni" on net."Device" (
  mac_address
);
