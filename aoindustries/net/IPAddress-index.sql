create index "IPAddress_package_idx" on "IPAddress" (
  package
);
create index "IPAddress_netDevice_idx" on "IPAddress" (
  "netDevice"
);
create index "IPAddress_inetAddress_idx" on "IPAddress" (
  "inetAddress"
);
