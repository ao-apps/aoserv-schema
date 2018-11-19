select "schema".add_foreign_key('postgresql', 'postgres_server_users', 'username',                  'postgres_users',   'username', '1.0a100', '1.80');
select "schema".add_foreign_key('postgresql', 'postgres_server_users', 'username',                  'postgres_users',   'username', '1.80.0',  null);
select "schema".add_foreign_key('postgresql', 'postgres_server_users', 'postgres_server',           'postgres_servers', 'pkey',     '1.0a100', '1.68');
select "schema".add_foreign_key('postgresql', 'postgres_server_users', 'postgres_server',           'postgres_servers', 'pkey',     '1.69',    null);
select "schema".add_foreign_key('postgresql', 'postgres_server_users', 'usesysid',        'public', 'linux_ids',        'id',       '1.0a100', '1.0a130');
select "schema".add_foreign_key('postgresql', 'postgres_server_users', 'disable_log',     'public', 'disable_log',      'pkey',     '1.0a100', null);
