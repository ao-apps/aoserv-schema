select "schema".add_column('email', 'email_forwarding', 'pkey', 0, 'pkey', false, true, false, 'a generated, unique key', '1.0a100', null);
select "schema".add_column('email', 'email_forwarding', 'email_address', 1, 'fkey', false, false, false, 'the primary key of the email_address', '1.0a100', null);
select "schema".add_column('email', 'email_forwarding', 'destination', 2, 'email', false, false, false, 'the destination of the email', '1.0a100', null);
