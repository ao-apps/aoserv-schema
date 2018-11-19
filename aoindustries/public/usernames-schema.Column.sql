select "schema".add_column('usernames', 'username', 0, 'username', false, true, false, 'the unique username', '1.0a100', null);
select "schema".add_column('usernames', 'package', 1, 'package', false, false, false, 'the package name that this user is part of', '1.0a100', '1.80');
select "schema".add_column('usernames', 'package', 2, 'accounting', false, false, false, 'the package name that this user is part of', '1.80.0', null);
select "schema".add_column('usernames', 'disable_log', 3, 'fkey', true, false, false, 'indicates that the username is disabled', '1.0a100', null);
