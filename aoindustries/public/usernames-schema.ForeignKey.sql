select "schema".add_foreign_key('public', 'usernames', 'package',     'billing', 'packages',    'name', '1.0a100', '1.80');
select "schema".add_foreign_key('public', 'usernames', 'package',     'billing', 'packages',    'name', '1.80.0',  null);
select "schema".add_foreign_key('public', 'usernames', 'disable_log', 'account', 'disable_log', 'pkey', '1.0a100', null);
