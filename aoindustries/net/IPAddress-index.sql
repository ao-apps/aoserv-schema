create index "IPAddress_package_idx" on "IPAddress" (
  package
);
create index "IPAddress_netDevice_idx" on "IPAddress" (
  "netDevice"
);
create index "IPAddress_pad_inetAddress_idx" on "IPAddress" (
  pad_ip_address("inetAddress")
);
