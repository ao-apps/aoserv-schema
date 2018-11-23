select "schema".add_column('linux', 'linux_account_types', 'name',        'string',  false,  true, true, 'the name of the type', '1.0a100', null);
select "schema".add_column('linux', 'linux_account_types', 'description', 'string',  false, false, true, 'a description of the type', '1.0a100', null);
select "schema".add_column('linux', 'linux_account_types', 'is_email',    'boolean', false, false, true, 'can email be associated with this account', '1.0a100', null);
