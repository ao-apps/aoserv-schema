select "schema".add_column('physical_servers', 'server', 0, 'fkey', false, true, false, 'a reference to servers', '1.36', null);
select "schema".add_column('physical_servers', 'rack', 1, 'fkey', true, false, false, 'the rack that houses this server', '1.36', null);
select "schema".add_column('physical_servers', 'rack_units', 2, 'short', true, false, false, 'the number of rack units', '1.36', null);
select "schema".add_column('physical_servers', 'ram', 3, 'int', true, false, false, 'the total number of megabytes of RAM in this server', '1.36', null);
select "schema".add_column('physical_servers', 'processor_type', 4, 'string', true, false, false, 'the processor type', '1.36', null);
select "schema".add_column('physical_servers', 'processor_speed', 5, 'int', true, false, false, 'the processor speed in MHz', '1.36', null);
select "schema".add_column('physical_servers', 'processor_cores', 6, 'int', true, false, false, 'the total number of processor cores, hyperthreads are counted as different cores', '1.36', null);
select "schema".add_column('physical_servers', 'max_power', 7, 'float', true, false, false, 'the number of amps this server consumes under peak load', '1.36', null);
select "schema".add_column('physical_servers', 'supports_hvm', 8, 'boolean', true, false, false, 'indicates supports full hardware virtualization', '1.37', null);
select "schema".add_column('physical_servers', 'ups_type', 9, 'string', false, false, false, 'the type of UPS powering the server', '1.63', null);