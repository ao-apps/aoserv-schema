select "schema".add_column('email', 'email_list_addresses', 'pkey',          'pkey', false,  true, false, '', '1.0a100', null);
select "schema".add_column('email', 'email_list_addresses', 'email_address', 'fkey', false, false, false, 'the primary key of the email_address', '1.0a100', null);
select "schema".add_column('email', 'email_list_addresses', 'email_list',    'fkey', false, false, false, 'the pkey of the email list', '1.0a100', null);
