select "schema".add_column('account', 'disable_log', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('account', 'disable_log', 'time', 1, 'time', false, false, false, 'the time the stuff was disabled', '1.0a100', null);
select "schema".add_column('account', 'disable_log', 'accounting', 2, 'accounting', false, false, false, 'the business whose resources are being disabled', '1.0a100', null);
select "schema".add_column('account', 'disable_log', 'disabled_by', 3, 'username', false, false, false, 'the person who disabled the accounts', '1.0a100', null);
select "schema".add_column('account', 'disable_log', 'disable_reason', 4, 'string', true, false, false, 'the optional reason the accounts were disabled', '1.0a100', null);
