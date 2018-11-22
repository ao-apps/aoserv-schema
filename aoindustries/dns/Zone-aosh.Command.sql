select aosh.add_command(
  'add_dns_zone',
  'dns',
  'dns_zones',
  'adds a zone to the name servers',
  '<i>package</i> <i>zone</i> <i>ip_address</i>',
  '1.0a100',
  '1.0a126'
);
select aosh.add_command(
  'add_dns_zone',
  'dns',
  'dns_zones',
  'adds a zone to the name servers',
  '<i>package</i> <i>zone</i> <i>ip_address</i> <i>ttl</i>',
  '1.0a127',
  null
);
select aosh.add_command(
  'set_dns_zone_ttl',
  'dns',
  'dns_zones',
  'sets the default TTL value for a name server zone',
  '<i>zone</i> <i>ttl</i>',
  '1.0a127',
  null
);
select aosh.add_command(
  'check_dns_zone',
  'dns',
  'dns_zones',
  'checks the format of a zone name',
  '<i>zone</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_dns_zone_available',
  'dns',
  'dns_zones',
  'checks the availability of a DNS zone',
  '<i>zone</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'print_zone_file',
  'dns',
  'dns_zones',
  'generates a zone file',
  '<i>zone</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_dns_zone',
  'dns',
  'dns_zones',
  'removes a zone from the name servers',
  '<i>zone</i>',
  '1.0a100',
  null
);
