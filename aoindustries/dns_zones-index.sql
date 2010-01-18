create unique index dns_zones_zone_uni on dns_zones (
  "zone"
);
create unique index dns_zones_file_uni on dns_zones (
  "file"
);
create unique index dns_zones_resource_type_super on dns_zones (
  resource_type, resource
);
create unique index dns_zones_accounting_super on dns_zones (
  accounting,
  resource
);
