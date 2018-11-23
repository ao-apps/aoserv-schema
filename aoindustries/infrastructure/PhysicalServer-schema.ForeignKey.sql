select "schema".add_foreign_key('infrastructure', 'physical_servers', 'server',         'server',         'servers',         'pkey', '1.36', null);
select "schema".add_foreign_key('infrastructure', 'physical_servers', 'rack',           'infrastructure', 'racks',           'pkey', '1.36', null);
select "schema".add_foreign_key('infrastructure', 'physical_servers', 'processor_type', 'infrastructure', 'processor_types', 'type', '1.36', null);
