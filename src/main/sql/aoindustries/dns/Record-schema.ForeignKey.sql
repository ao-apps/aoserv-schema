select "schema".add_foreign_key('dns', 'dns_records', 'zone',         'dns', 'dns_zones',    'zone', '1.0a100', null);
select "schema".add_foreign_key('dns', 'dns_records', 'type',         'dns', 'dns_types',    'type', '1.0a100', null);
select "schema".add_foreign_key('dns', 'dns_records', 'dhcp_address', 'net', 'ip_addresses', 'pkey', '1.0a100', '1.68');
select "schema".add_foreign_key('dns', 'dns_records', 'dhcp_address', 'net', 'ip_addresses', 'pkey', '1.69',    '1.81.17');
select "schema".add_foreign_key('dns', 'dns_records', 'dhcpAddress',  'net', 'ip_addresses', 'id',   '1.81.18', null);
