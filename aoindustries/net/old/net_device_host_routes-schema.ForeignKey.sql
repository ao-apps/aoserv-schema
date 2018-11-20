select "schema".add_foreign_key('net', 'net_device_host_routes', 'net_device',                    'net_devices', 'pkey',   '1.0a100', '1.0a130');
select "schema".add_foreign_key('net', 'net_device_host_routes', 'connected_ao_server', 'public', 'ao_servers',  'server', '1.0a100', '1.0a130');
