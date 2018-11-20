select "schema".add_foreign_key('server', 'ao_servers', 'server',                     'servers',        'pkey',   '1.0a100', null);
select "schema".add_foreign_key('server', 'ao_servers', 'daemon_bind',         'net', 'net_binds',      'pkey',   '1.0a100', null);
select "schema".add_foreign_key('server', 'ao_servers', 'failover_server',            'ao_servers',     'server', '1.0a100', null);
select "schema".add_foreign_key('server', 'ao_servers', 'daemon_device_id',    'net', 'net_device_ids', 'name',   '1.0a100', null);
select "schema".add_foreign_key('server', 'ao_servers', 'daemon_connect_bind', 'net', 'net_binds',      'pkey',   '1.0a119', null);
select "schema".add_foreign_key('server', 'ao_servers', 'time_zone',                  'time_zones',     'name',   '1.2',     null);
select "schema".add_foreign_key('server', 'ao_servers', 'jilter_bind',         'net', 'net_binds',      'pkey',   '1.7',     null);
