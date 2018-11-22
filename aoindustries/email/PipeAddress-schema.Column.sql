select "schema".add_column('email', 'email_pipe_addresses', 'pkey',          'pkey', false,  true, false, 'a generated, unique key', '1.0a100', null);
select "schema".add_column('email', 'email_pipe_addresses', 'email_address', 'fkey', false, false, false, 'the primary key of the email_address', '1.0a100', null);
select "schema".add_column('email', 'email_pipe_addresses', 'email_pipe',    'fkey', false, false, false, 'the primary key of the email pipe', '1.0a100', null);
