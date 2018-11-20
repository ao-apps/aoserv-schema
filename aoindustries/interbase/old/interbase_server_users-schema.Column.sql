select "schema".add_column('interbase', 'interbase_server_users', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a100', '1.30');
select "schema".add_column('interbase', 'interbase_server_users', 'username', 1, 'username', false, false, false, 'the username of the interbase_user', '1.0a100', '1.30');
select "schema".add_column('interbase', 'interbase_server_users', 'ao_server', 2, 'fkey', false, false, false, 'the pkey of the server', '1.0a100', '1.30');
select "schema".add_column('interbase', 'interbase_server_users', 'disable_log', 3, 'fkey', true, false, false, 'indicates that this account is disable', '1.0a100', '1.30');
select "schema".add_column('interbase', 'interbase_server_users', 'predisable_password', 4, 'string', true, false, false, 'the password used before the account was disabled', '1.0a115', '1.30');
