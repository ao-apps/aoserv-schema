select "schema".add_column('email', 'spam_email_messages', 'pkey',        'pkey',   false,  true, false, 'a generated unique key', '1.0a100', null);
select "schema".add_column('email', 'spam_email_messages', 'email_relay', 'fkey',   false, false, false, 'the relay that has been denied', '1.0a100', null);
select "schema".add_column('email', 'spam_email_messages', 'time',        'time',   false, false, false, 'the time the message was added', '1.0a100', null);
select "schema".add_column('email', 'spam_email_messages', 'message',     'string', false, false, false, 'the message contents', '1.0a100', null);
