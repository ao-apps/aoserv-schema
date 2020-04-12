select "schema".add_column('dns', 'dns_zones', 'zone',       'zone',       false,  true, false, 'the zone (domain) that is hosted', '1.0a100', null);
select "schema".add_column('dns', 'dns_zones', 'file',       'string',     false, false, false, 'the filename of the zone file', '1.0a100', null);
select "schema".add_column('dns', 'dns_zones', 'package',    'package',    false, false, false, 'the package that owns the zones', '1.0a100', '1.80');
select "schema".add_column('dns', 'dns_zones', 'package',    'accounting', false, false, false, 'the package that owns the zones', '1.80.0', null);
select "schema".add_column('dns', 'dns_zones', 'hostmaster', 'string',     false, false, false, 'the email address of the person in charge of the domain', '1.0a100', null);
select "schema".add_column('dns', 'dns_zones', 'serial',     'long',       false, false, false, 'the ever-incrementing serial number for the file', '1.0a100', null);
select "schema".add_column('dns', 'dns_zones', 'ttl',        'int',        false, false, false, '', '1.0a127', null);
