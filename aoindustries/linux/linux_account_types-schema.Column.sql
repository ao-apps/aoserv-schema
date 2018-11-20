select "schema".add_column('linux', 'linux_account_types', 'name', 0, 'string', false, true, true, 'the name of the type', '1.0a100', null);
select "schema".add_column('linux', 'linux_account_types', 'description', 1, 'string', false, false, true, 'a description of the type', '1.0a100', null);
select "schema".add_column('linux', 'linux_account_types', 'is_email', 2, 'boolean', false, false, true, 'can email be associated with this account', '1.0a100', null);
