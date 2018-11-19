select "schema".add_column('spam_email_messages', 'pkey', 0, 'pkey', false, true, false, 'a generated unique key', '1.0a100', null);
select "schema".add_column('spam_email_messages', 'email_relay', 1, 'fkey', false, false, false, 'the relay that has been denied', '1.0a100', null);
select "schema".add_column('spam_email_messages', 'time', 2, 'time', false, false, false, 'the time the message was added', '1.0a100', null);
select "schema".add_column('spam_email_messages', 'message', 3, 'string', false, false, false, 'the message contents', '1.0a100', null);
