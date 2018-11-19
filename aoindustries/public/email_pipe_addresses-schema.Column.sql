select "schema".add_column('email_pipe_addresses', 'pkey', 0, 'pkey', false, true, false, 'a generated, unique key', '1.0a100', null);
select "schema".add_column('email_pipe_addresses', 'email_address', 1, 'fkey', false, false, false, 'the primary key of the email_address', '1.0a100', null);
select "schema".add_column('email_pipe_addresses', 'email_pipe', 2, 'fkey', false, false, false, 'the primary key of the email pipe', '1.0a100', null);
