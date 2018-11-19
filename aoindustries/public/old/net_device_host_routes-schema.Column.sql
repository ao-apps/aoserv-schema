select "schema".add_column('net_device_host_routes', 'pkey', 0, 'pkey', false, true, false, '', '1.0a100', '1.0a130');
select "schema".add_column('net_device_host_routes', 'net_device', 1, 'fkey', false, false, false, '', '1.0a100', '1.0a130');
select "schema".add_column('net_device_host_routes', 'connected_ao_server', 2, 'fkey', false, false, false, '', '1.0a100', '1.0a130');
