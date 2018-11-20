select "schema".add_column('email', 'email_addresses', 'pkey',    'pkey',   false,  true, false, 'the primary key', '1.0a100', null);
select "schema".add_column('email', 'email_addresses', 'address', 'string', false, false, false, 'address before the @', '1.0a100', null);
select "schema".add_column('email', 'email_addresses', 'domain',  'fkey',   false, false, false, 'the pkey of the email domain', '1.0a100', null);
