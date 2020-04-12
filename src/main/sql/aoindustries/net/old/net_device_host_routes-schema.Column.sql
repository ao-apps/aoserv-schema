select "schema".add_column('net', 'net_device_host_routes', 'pkey',                'pkey', false,  true, false, '', '1.0a100', '1.0a130');
select "schema".add_column('net', 'net_device_host_routes', 'net_device',          'fkey', false, false, false, '', '1.0a100', '1.0a130');
select "schema".add_column('net', 'net_device_host_routes', 'connected_ao_server', 'fkey', false, false, false, '', '1.0a100', '1.0a130');
