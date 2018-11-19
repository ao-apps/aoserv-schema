select "schema".add_column('postgres_users', 'username', 0, 'username', false, true, false, 'the username of the user', '1.0a100', '1.80');
select "schema".add_column('postgres_users', 'username', 1, 'postgres_username', false, true, false, 'the username of the user', '1.80.0', null);
select "schema".add_column('postgres_users', 'createdb', 2, 'boolean', false, false, false, 'usecreatedb flag', '1.0a100', null);
select "schema".add_column('postgres_users', 'trace', 3, 'boolean', false, false, false, 'usetrace flag', '1.0a100', null);
select "schema".add_column('postgres_users', 'super', 4, 'boolean', false, false, false, 'usesuper flag', '1.0a100', null);
select "schema".add_column('postgres_users', 'catupd', 5, 'boolean', false, false, false, 'usecatupd flag', '1.0a100', null);
select "schema".add_column('postgres_users', 'disable_log', 6, 'fkey', true, false, false, 'indicates that this account is disabled', '1.0a100', null);
