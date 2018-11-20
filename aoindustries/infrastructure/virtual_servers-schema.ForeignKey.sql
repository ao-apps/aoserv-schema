select "schema".add_foreign_key('infrastructure', 'virtual_servers', 'server',                           'public', 'servers',          'pkey',   '1.36', null);
select "schema".add_foreign_key('infrastructure', 'virtual_servers', 'minimum_processor_type',                     'processor_types',  'type',   '1.41', null);
select "schema".add_foreign_key('infrastructure', 'virtual_servers', 'primary_minimum_processor_type',             'processor_types',  'type',   '1.36', '1.40');
select "schema".add_foreign_key('infrastructure', 'virtual_servers', 'secondary_minimum_processor_type',           'processor_types',  'type',   '1.36', '1.40');
select "schema".add_foreign_key('infrastructure', 'virtual_servers', 'minimum_processor_architecture',   'public', 'architectures',    'name',   '1.36', null);
select "schema".add_foreign_key('infrastructure', 'virtual_servers', 'primary_physical_server',                    'physical_servers', 'server', '1.36', '1.40');
select "schema".add_foreign_key('infrastructure', 'virtual_servers', 'secondary_physical_server',                  'physical_servers', 'server', '1.36', '1.40');
