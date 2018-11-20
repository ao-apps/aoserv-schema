select "schema".add_column('email', 'email_attachment_blocks', 'pkey',                 'pkey',   false,  true, false, 'a unique, generated primary key', '1.0a116', null);
select "schema".add_column('email', 'email_attachment_blocks', 'linux_server_account', 'fkey',   false, false, false, 'reference to the email inbox', '1.0a116', null);
select "schema".add_column('email', 'email_attachment_blocks', 'extension',            'string', false, false, false, 'the extension of the blocked files', '1.0a116', null);
