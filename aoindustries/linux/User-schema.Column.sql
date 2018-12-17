select "schema".add_column('linux', 'linux_accounts', 'username',        'username',       false,  true, false, 'the unique username', '1.0a100', '1.81.21');
select "schema".add_column('linux', 'linux_accounts', 'username',        'linux_username', false,  true, false, 'the unique username', '1.81.22', null);
select "schema".add_column('linux', 'linux_accounts', 'name',            'string',         false, false, false, 'the full name of the user', '1.0a100', '1.68');
select "schema".add_column('linux', 'linux_accounts', 'name',            'gecos',          false, false, false, 'the full name of the user', '1.69', '1.80.0');
select "schema".add_column('linux', 'linux_accounts', 'name',            'gecos',           true, false, false, 'the full name of the user', '1.80.1', null);
select "schema".add_column('linux', 'linux_accounts', 'office_location', 'string',          true, false, false, 'the location of the user', '1.0a100', '1.68');
select "schema".add_column('linux', 'linux_accounts', 'office_location', 'gecos',           true, false, false, 'the location of the user', '1.69', null);
select "schema".add_column('linux', 'linux_accounts', 'office_phone',    'phone',           true, false, false, 'the work phone number of the user', '1.0a100', '1.68');
select "schema".add_column('linux', 'linux_accounts', 'office_phone',    'gecos',           true, false, false, 'the work phone number of the user', '1.69', null);
select "schema".add_column('linux', 'linux_accounts', 'home_phone',      'phone',           true, false, false, 'the home phone number of the user', '1.0a100', '1.68');
select "schema".add_column('linux', 'linux_accounts', 'home_phone',      'gecos',           true, false, false, 'the home phone number of the user', '1.69', null);
select "schema".add_column('linux', 'linux_accounts', 'type',            'string',         false, false, false, 'the type of account', '1.0a100', null);
select "schema".add_column('linux', 'linux_accounts', 'shell',           'path',           false, false, false, 'the users shell preference', '1.0a100', null);
select "schema".add_column('linux', 'linux_accounts', 'created',         'time',           false, false, false, 'the time the account was created', '1.0a100', null);
select "schema".add_column('linux', 'linux_accounts', 'disable_log',     'fkey',            true, false, false, 'indicates that this account is disabled', '1.0a100', null);
