create index dns_records_type_idx on dns_records (
  "type"
);
create index "dns_records_dhcpAddress_idx" on dns_records (
  "dhcpAddress"
);
