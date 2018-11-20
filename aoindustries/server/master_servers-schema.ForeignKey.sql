select "schema".add_foreign_key('server', 'master_servers', 'username', 'public', 'master_users', 'username', '1.0a100', null);
select "schema".add_foreign_key('server', 'master_servers', 'server',             'servers',      'pkey',     '1.0a100', null);
