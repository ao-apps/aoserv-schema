create index "IpAddress_netDevice_fkey" on net."IpAddress" (
  "netDevice"
);
create index "IpAddress_package_fkey" on net."IpAddress" (
  package
);
