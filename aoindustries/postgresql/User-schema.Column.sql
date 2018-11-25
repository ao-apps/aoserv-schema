select "schema".add_column('postgresql', 'postgres_users', 'username',    'username',          false,  true, false, 'the username of the user', '1.0a100', '1.80');
select "schema".add_column('postgresql', 'postgres_users', 'username',    'postgres_username', false,  true, false, 'the username of the user', '1.80.0', null);
select "schema".add_column('postgresql', 'postgres_users', 'createdb',    'boolean',           false, false, false, 'usecreatedb flag', '1.0a100', null);
select "schema".add_column('postgresql', 'postgres_users', 'trace',       'boolean',           false, false, false, 'usetrace flag', '1.0a100', null);
select "schema".add_column('postgresql', 'postgres_users', 'super',       'boolean',           false, false, false, 'usesuper flag', '1.0a100', null);
select "schema".add_column('postgresql', 'postgres_users', 'catupd',      'boolean',           false, false, false, 'usecatupd flag', '1.0a100', null);
select "schema".add_column('postgresql', 'postgres_users', 'disable_log', 'fkey',               true, false, false, 'indicates that this account is disabled', '1.0a100', null);
