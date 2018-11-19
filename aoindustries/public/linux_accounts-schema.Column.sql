select "schema".add_column('linux_accounts', 'username', 0, 'username', false, true, false, 'the unique username', '1.0a100', null);
select "schema".add_column('linux_accounts', 'name', 1, 'string', false, false, false, 'the full name of the user', '1.0a100', '1.68');
select "schema".add_column('linux_accounts', 'name', 2, 'gecos', false, false, false, 'the full name of the user', '1.69', '1.80.0');
select "schema".add_column('linux_accounts', 'name', 3, 'gecos', true, false, false, 'the full name of the user', '1.80.1', null);
select "schema".add_column('linux_accounts', 'office_location', 4, 'string', true, false, false, 'the location of the user', '1.0a100', '1.68');
select "schema".add_column('linux_accounts', 'office_location', 5, 'gecos', true, false, false, 'the location of the user', '1.69', null);
select "schema".add_column('linux_accounts', 'office_phone', 6, 'phone', true, false, false, 'the work phone number of the user', '1.0a100', '1.68');
select "schema".add_column('linux_accounts', 'office_phone', 7, 'gecos', true, false, false, 'the work phone number of the user', '1.69', null);
select "schema".add_column('linux_accounts', 'home_phone', 8, 'phone', true, false, false, 'the home phone number of the user', '1.0a100', '1.68');
select "schema".add_column('linux_accounts', 'home_phone', 9, 'gecos', true, false, false, 'the home phone number of the user', '1.69', null);
select "schema".add_column('linux_accounts', 'type', 10, 'string', false, false, false, 'the type of account', '1.0a100', null);
select "schema".add_column('linux_accounts', 'shell', 11, 'path', false, false, false, 'the users shell preference', '1.0a100', null);
select "schema".add_column('linux_accounts', 'created', 12, 'time', false, false, false, 'the time the account was created', '1.0a100', null);
select "schema".add_column('linux_accounts', 'disable_log', 13, 'fkey', true, false, false, 'indicates that this account is disabled', '1.0a100', null);