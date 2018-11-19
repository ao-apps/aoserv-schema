select "schema".add_column('dns', 'dns_zones', 'zone', 0, 'zone', false, true, false, 'the zone (domain) that is hosted', '1.0a100', null);
select "schema".add_column('dns', 'dns_zones', 'file', 1, 'string', false, false, false, 'the filename of the zone file', '1.0a100', null);
select "schema".add_column('dns', 'dns_zones', 'package', 2, 'package', false, false, false, 'the package that owns the zones', '1.0a100', '1.80');
select "schema".add_column('dns', 'dns_zones', 'package', 3, 'accounting', false, false, false, 'the package that owns the zones', '1.80.0', null);
select "schema".add_column('dns', 'dns_zones', 'hostmaster', 4, 'string', false, false, false, 'the email address of the person in charge of the domain', '1.0a100', null);
select "schema".add_column('dns', 'dns_zones', 'serial', 5, 'long', false, false, false, 'the ever-incrementing serial number for the file', '1.0a100', null);
select "schema".add_column('dns', 'dns_zones', 'ttl', 6, 'int', false, false, false, '', '1.0a127', null);
