select "schema".add_foreign_key('postgresql', 'postgres_server_users', 'username',        'postgresql', 'postgres_users',   'username', '1.0a100', '1.80');
select "schema".add_foreign_key('postgresql', 'postgres_server_users', 'username',        'postgresql', 'postgres_users',   'username', '1.80.0',  null);
select "schema".add_foreign_key('postgresql', 'postgres_server_users', 'postgres_server', 'postgresql', 'postgres_servers', 'pkey',     '1.0a100', '1.68');
select "schema".add_foreign_key('postgresql', 'postgres_server_users', 'postgres_server', 'postgresql', 'postgres_servers', 'pkey',     '1.69',    '1.81.17');
select "schema".add_foreign_key('postgresql', 'postgres_server_users', 'postgres_server', 'postgresql', 'postgres_servers', 'bind',     '1.81.18', null);
select "schema".add_foreign_key('postgresql', 'postgres_server_users', 'usesysid',        'linux',      'linux_ids',        'id',       '1.0a100', '1.0a130');
select "schema".add_foreign_key('postgresql', 'postgres_server_users', 'disable_log',     'account',    'disable_log',      'pkey',     '1.0a100', null);
