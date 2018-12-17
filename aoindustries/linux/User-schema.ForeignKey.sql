select "schema".add_foreign_key('linux', 'linux_accounts', 'username',    'account', 'usernames',           'username', '1.0a100', '1.81.21');
select "schema".add_foreign_key('linux', 'linux_accounts', 'username',    'account', 'usernames',           'username', '1.81.22', null);
select "schema".add_foreign_key('linux', 'linux_accounts', 'shell',       'linux',   'shells',              'path',     '1.0a100', null);
select "schema".add_foreign_key('linux', 'linux_accounts', 'type',        'linux',   'linux_account_types', 'name',     '1.0a100', null);
select "schema".add_foreign_key('linux', 'linux_accounts', 'disable_log', 'account', 'disable_log',         'pkey',     '1.0a100', null);
