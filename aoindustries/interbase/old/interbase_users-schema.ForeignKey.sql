select "schema".add_foreign_key('interbase', 'interbase_users', 'username',    'public', 'usernames',   'username', '1.0a100', '1.30');
select "schema".add_foreign_key('interbase', 'interbase_users', 'disable_log', 'public', 'disable_log', 'pkey',     '1.0a100', '1.30');
