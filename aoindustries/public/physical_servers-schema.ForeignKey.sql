select "schema".add_foreign_key('physical_servers', 'server', 'servers', 'pkey', '1.36', null);
select "schema".add_foreign_key('physical_servers', 'rack', 'racks', 'pkey', '1.36', null);
select "schema".add_foreign_key('physical_servers', 'processor_type', 'processor_types', 'type', '1.36', null);
