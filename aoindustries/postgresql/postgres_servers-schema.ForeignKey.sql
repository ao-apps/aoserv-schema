select "schema".add_foreign_key('postgresql', 'postgres_servers', 'ao_server',              'server',     'ao_servers',        'server',  '1.0a100', null);
select "schema".add_foreign_key('postgresql', 'postgres_servers', 'version',                'postgresql', 'postgres_versions', 'version', '1.0a100', null);
select "schema".add_foreign_key('postgresql', 'postgres_servers', 'net_bind',               'net',        'net_binds',         'pkey',    '1.0a100', null);
select "schema".add_foreign_key('postgresql', 'postgres_servers', 'last_postgres_usesysid', 'linux',      'linux_ids',         'id',      '1.0a100', '1.0a130');
