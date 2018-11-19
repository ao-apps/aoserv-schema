select "schema".add_foreign_key('email_pipe_addresses', 'email_address', 'email_addresses', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('email_pipe_addresses', 'email_pipe', 'email_pipes', 'pkey', '1.0a100', null);
