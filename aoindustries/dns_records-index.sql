create unique index dns_records_resource_type_super on dns_records (
  resource_type, resource
);
-- Need not be unique
-- create unique index dns_records_mx_priority_uni on dns_records (
--   "zone",
--   "domain",
--   mx_priority
-- ) where "type"='MX';
create unique index dns_records_ip_address_uni on dns_records (
  "zone",
  "domain",
  data_ip_address
) where "type" in ('A', 'AAAA');
create unique index dns_records_domain_name_uni on dns_records (
  "zone",
  "domain",
  data_domain_name
) where "type" in ('CNAME', 'MX', 'NS', 'PTR');
create index dns_records_type_idx on dns_records (
  "type"
);
create index dns_records_dhcp_address_idx on dns_records (
  dhcp_address
);
create unique index dns_records_accounting_super on dns_records (
  accounting,
  resource
);
create index dns_records_accounting_idx on dns_records (
  accounting,
  "zone"
);
