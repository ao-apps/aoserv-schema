select "schema".add_foreign_key('linux', 'linux_accounts', 'username',    'public',  'usernames',           'username', '1.0a100', null);
select "schema".add_foreign_key('linux', 'linux_accounts', 'shell',                  'shells',              'path',     '1.0a100', null);
select "schema".add_foreign_key('linux', 'linux_accounts', 'type',                   'linux_account_types', 'name',     '1.0a100', null);
select "schema".add_foreign_key('linux', 'linux_accounts', 'disable_log', 'account', 'disable_log',         'pkey',     '1.0a100', null);
