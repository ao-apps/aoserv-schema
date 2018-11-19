select "schema".add_foreign_key('sendmail_smtp_stats', 'package', 'packages', 'name', '1.0a100', '1.30');
select "schema".add_foreign_key('sendmail_smtp_stats', 'ao_server', 'ao_servers', 'server', '1.0a100', '1.30');
