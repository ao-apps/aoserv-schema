create index "Record_type_fkey" on dns."Record" (
  "type"
);
create index "Record_dhcpAddress_fkey" on dns."Record" (
  "dhcpAddress"
);
