create index "IPAddress_netDevice_fkey" on "IPAddress" (
  "netDevice"
);
create index "IPAddress_package_fkey" on "IPAddress" (
  package
);
