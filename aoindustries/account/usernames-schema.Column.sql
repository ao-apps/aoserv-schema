select "schema".add_column('account', 'usernames', 'username',    'username',   false,  true, false, 'the unique username', '1.0a100', null);
select "schema".add_column('account', 'usernames', 'package',     'package',    false, false, false, 'the package name that this user is part of', '1.0a100', '1.80');
select "schema".add_column('account', 'usernames', 'package',     'accounting', false, false, false, 'the package name that this user is part of', '1.80.0', null);
select "schema".add_column('account', 'usernames', 'disable_log', 'fkey',        true, false, false, 'indicates that the username is disabled', '1.0a100', null);
