select "schema".add_foreign_key('postgres_users', 'username', 'usernames', 'username', '1.0a100', '1.80');
select "schema".add_foreign_key('postgres_users', 'username', 'usernames', 'username', '1.80.0', null);
select "schema".add_foreign_key('postgres_users', 'disable_log', 'disable_log', 'pkey', '1.0a100', null);
