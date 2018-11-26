select "schema".add_foreign_key('master', 'master_servers', 'username', 'master', 'master_users', 'username', '1.0a100', null);
select "schema".add_foreign_key('master', 'master_servers', 'server',   'net',    'servers',      'pkey',     '1.0a100', null);
