select "schema".add_foreign_key('email', 'sendmail_smtp_stats', 'package',   'public', 'packages',   'name',   '1.0a100', '1.30');
select "schema".add_foreign_key('email', 'sendmail_smtp_stats', 'ao_server', 'public', 'ao_servers', 'server', '1.0a100', '1.30');
