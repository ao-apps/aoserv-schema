select "schema".add_column('interbase', 'interbase_users', 'username',    'username', false,  true, false, 'the username of the user', '1.0a100', '1.30');
select "schema".add_column('interbase', 'interbase_users', 'first_name',  'string',    true, false, false, 'the first name of the user', '1.0a100', '1.30');
select "schema".add_column('interbase', 'interbase_users', 'middle_name', 'string',    true, false, false, 'the middle name of the user', '1.0a100', '1.30');
select "schema".add_column('interbase', 'interbase_users', 'last_name',   'string',    true, false, false, 'the last name of the user', '1.0a100', '1.30');
select "schema".add_column('interbase', 'interbase_users', 'disable_log', 'fkey',      true, false, false, 'indicates that this account is disabled', '1.0a100', '1.30');
