select "schema".add_column('email', 'email_attachment_blocks', 'pkey', 0, 'pkey', false, true, false, 'a unique, generated primary key', '1.0a116', null);
select "schema".add_column('email', 'email_attachment_blocks', 'linux_server_account', 1, 'fkey', false, false, false, 'reference to the email inbox', '1.0a116', null);
select "schema".add_column('email', 'email_attachment_blocks', 'extension', 2, 'string', false, false, false, 'the extension of the blocked files', '1.0a116', null);
