select "schema".add_foreign_key('net_devices', 'ao_server', 'ao_servers', 'server', '1.0a100', '1.32');
select "schema".add_foreign_key('net_devices', 'server', 'servers', 'pkey', '1.33', null);
select "schema".add_foreign_key('net_devices', 'device_id', 'net_device_ids', 'name', '1.0a100', null);
