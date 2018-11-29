create index "IpAddress_device_fkey" on net."IpAddress" (
  device
);
create index "IpAddress_package_fkey" on net."IpAddress" (
  package
);
