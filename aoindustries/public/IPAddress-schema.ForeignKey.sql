select "schema".add_foreign_key('ip_addresses', 'net_device', 'net_devices', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('ip_addresses', 'package', 'packages', 'name', '1.0a100', '1.80');
select "schema".add_foreign_key('ip_addresses', 'package', 'packages', 'name', '1.80.0', null);
