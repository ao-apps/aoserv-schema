select "schema".add_foreign_key('net', 'net_devices', 'ao_server', 'linux',  'ao_servers',     'server', '1.0a100', '1.32');
select "schema".add_foreign_key('net', 'net_devices', 'server',    'server', 'servers',        'pkey',   '1.33',    null);
select "schema".add_foreign_key('net', 'net_devices', 'device_id', 'net',    'net_device_ids', 'name',   '1.0a100', null);
