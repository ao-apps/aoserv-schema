select "schema".add_column('master', 'master_servers', 'pkey',     'pkey',     false,  true, false, 'a generated unique primary key', '1.0a100', null);
select "schema".add_column('master', 'master_servers', 'username', 'username', false, false, false, 'the unique username of the user', '1.0a100', null);
select "schema".add_column('master', 'master_servers', 'server',   'fkey',     false, false, false, 'the pkey of the server they may control', '1.0a100', null);
