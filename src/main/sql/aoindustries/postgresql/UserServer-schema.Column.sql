select "schema".add_column('postgresql', 'postgres_server_users', 'pkey',                'pkey',              false,  true, false, 'a unique, generated number', '1.0a100', null);
select "schema".add_column('postgresql', 'postgres_server_users', 'username',            'username',          false, false, false, 'the username as found in postgres_users', '1.0a100', '1.80');
select "schema".add_column('postgresql', 'postgres_server_users', 'username',            'postgres_username', false, false, false, 'the username as found in postgres_users', '1.80.0', null);
select "schema".add_column('postgresql', 'postgres_server_users', 'postgres_server',     'pkey',              false, false, false, 'the pkey of the PostgreSQL server', '1.0a100', '1.68');
select "schema".add_column('postgresql', 'postgres_server_users', 'postgres_server',     'fkey',              false, false, false, 'the pkey of the PostgreSQL server', '1.69', null);
select "schema".add_column('postgresql', 'postgres_server_users', 'usesysid',            'int',               false, false, false, 'the PostgreSQL usesysid as found in pg_users', '1.0a100', '1.0a130');
select "schema".add_column('postgresql', 'postgres_server_users', 'disable_log',         'fkey',               true, false, false, 'indicates that this account is disabled', '1.0a100', null);
select "schema".add_column('postgresql', 'postgres_server_users', 'predisable_password', 'string',             true, false, false, 'the password that was on the account before it was disabled', '1.0a100', null);
