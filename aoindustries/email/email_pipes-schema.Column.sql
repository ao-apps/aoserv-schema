select "schema".add_column('email', 'email_pipes', 'pkey',        'pkey',       false,  true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('email', 'email_pipes', 'ao_server',   'fkey',       false, false, false, 'the pkey of the server the program resides on', '1.0a100', null);
select "schema".add_column('email', 'email_pipes', 'path',        'path',       false, false, false, 'the complete path to the email handling program', '1.0a100', '1.80');
select "schema".add_column('email', 'email_pipes', 'command',     'string',     false, false, false, 'the complete command string to the email handling program', '1.80.0', null);
select "schema".add_column('email', 'email_pipes', 'package',     'package',    false, false, false, 'the package that this program runs for', '1.0a100', '1.80');
select "schema".add_column('email', 'email_pipes', 'package',     'accounting', false, false, false, 'the package that this program runs for', '1.80.0', null);
select "schema".add_column('email', 'email_pipes', 'disable_log', 'fkey',        true, false, false, 'indicates that this email pipe is disabled', '1.0a100', null);
