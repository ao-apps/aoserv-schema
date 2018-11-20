select "schema".add_column('email', 'email_smtp_relay_types', 'name',            'string', false,  true, true, 'the name of the type', '1.0a100', null);
select "schema".add_column('email', 'email_smtp_relay_types', 'sendmail_config', 'string', false, false, true, 'the config value used for sendmail', '1.0a100', null);
select "schema".add_column('email', 'email_smtp_relay_types', 'qmail_config',    'string', false, false, true, 'the config value used for qmail', '1.0a100', null);
