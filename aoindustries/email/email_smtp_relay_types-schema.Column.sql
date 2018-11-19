select "schema".add_column('email', 'email_smtp_relay_types', 'name', 0, 'string', false, true, true, 'the name of the type', '1.0a100', null);
select "schema".add_column('email', 'email_smtp_relay_types', 'sendmail_config', 1, 'string', false, false, true, 'the config value used for sendmail', '1.0a100', null);
select "schema".add_column('email', 'email_smtp_relay_types', 'qmail_config', 2, 'string', false, false, true, 'the config value used for qmail', '1.0a100', null);
