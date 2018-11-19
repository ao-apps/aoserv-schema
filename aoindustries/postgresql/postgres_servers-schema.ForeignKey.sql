select "schema".add_foreign_key('postgresql', 'postgres_servers', 'ao_server',              'public', 'ao_servers',        'server',  '1.0a100', null);
select "schema".add_foreign_key('postgresql', 'postgres_servers', 'version',                          'postgres_versions', 'version', '1.0a100', null);
select "schema".add_foreign_key('postgresql', 'postgres_servers', 'net_bind',               'public', 'net_binds',         'pkey',    '1.0a100', null);
select "schema".add_foreign_key('postgresql', 'postgres_servers', 'last_postgres_usesysid', 'public', 'linux_ids',         'id',      '1.0a100', '1.0a130');
