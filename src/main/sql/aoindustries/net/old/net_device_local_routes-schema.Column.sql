select "schema".add_column('net', 'net_device_local_routes', 'pkey',       'pkey',   false,  true, false, '', '1.0a100', '1.0a130');
select "schema".add_column('net', 'net_device_local_routes', 'net_device', 'fkey',   false, false, false, '', '1.0a100', '1.0a130');
select "schema".add_column('net', 'net_device_local_routes', 'local_net',  'string', false, false, false, '', '1.0a100', '1.0a130');
