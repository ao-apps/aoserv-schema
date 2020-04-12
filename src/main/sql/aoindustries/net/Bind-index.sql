create index "Bind_package_fkey" on net."Bind" (
  package
);
create index "Bind_ipAddress_fkey" on net."Bind" (
  "ipAddress"
);
create index "Bind_app_protocol_fkey" on net."Bind" (
  app_protocol
);
