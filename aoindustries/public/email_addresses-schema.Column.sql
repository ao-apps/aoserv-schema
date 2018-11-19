select "schema".add_column('email_addresses', 'pkey', 0, 'pkey', false, true, false, 'the primary key', '1.0a100', null);
select "schema".add_column('email_addresses', 'address', 1, 'string', false, false, false, 'address before the @', '1.0a100', null);
select "schema".add_column('email_addresses', 'domain', 2, 'fkey', false, false, false, 'the pkey of the email domain', '1.0a100', null);
