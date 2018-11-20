select "schema".add_foreign_key('interbase', 'interbase_server_users', 'username',               'interbase_users', 'username', '1.0a100', '1.30');
select "schema".add_foreign_key('interbase', 'interbase_server_users', 'ao_server',   'server',  'ao_servers',      'server',   '1.0a100', '1.30');
select "schema".add_foreign_key('interbase', 'interbase_server_users', 'disable_log', 'account', 'disable_log',     'pkey',     '1.0a100', '1.30');
