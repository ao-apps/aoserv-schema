select "schema".add_foreign_key('dns_zones', 'package', 'packages', 'name', '1.0a100', '1.80');
select "schema".add_foreign_key('dns_zones', 'package', 'packages', 'name', '1.80.0', null);
