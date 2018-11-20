select "schema".add_foreign_key('infrastructure', 'physical_servers', 'server',         'public', 'servers',         'pkey', '1.36', null);
select "schema".add_foreign_key('infrastructure', 'physical_servers', 'rack',                     'racks',           'pkey', '1.36', null);
select "schema".add_foreign_key('infrastructure', 'physical_servers', 'processor_type',           'processor_types', 'type', '1.36', null);
