create index dns_records_type_idx on dns_records (
  "type"
);
create index dns_records_dhcp_address_idx on dns_records (
  dhcp_address
);
