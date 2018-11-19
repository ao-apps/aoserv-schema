select "schema".add_column('email', 'system_email_aliases', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('email', 'system_email_aliases', 'ao_server', 1, 'fkey', false, false, false, 'the pkey of the server the entry is on', '1.0a100', null);
select "schema".add_column('email', 'system_email_aliases', 'address', 2, 'string', false, false, false, 'the address (username only) to match', '1.0a100', null);
select "schema".add_column('email', 'system_email_aliases', 'destination', 3, 'string', false, false, false, 'the destination, as found in /etc/aliases', '1.0a100', null);
