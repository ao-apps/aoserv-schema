select "schema".add_column('net', 'net_device_local_routes', 'pkey', 0, 'pkey', false, true, false, '', '1.0a100', '1.0a130');
select "schema".add_column('net', 'net_device_local_routes', 'net_device', 1, 'fkey', false, false, false, '', '1.0a100', '1.0a130');
select "schema".add_column('net', 'net_device_local_routes', 'local_net', 2, 'string', false, false, false, '', '1.0a100', '1.0a130');
