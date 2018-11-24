select "schema".add_foreign_key('email', 'email_smtp_relays', 'package',     'billing', 'packages',               'name',   '1.0a100', '1.80');
select "schema".add_foreign_key('email', 'email_smtp_relays', 'package',     'billing', 'packages',               'name',   '1.80.0',  null);
select "schema".add_foreign_key('email', 'email_smtp_relays', 'ao_server',   'linux',   'ao_servers',             'server', '1.0a100', null);
select "schema".add_foreign_key('email', 'email_smtp_relays', 'type',        'email',   'email_smtp_relay_types', 'name',   '1.0a100', null);
select "schema".add_foreign_key('email', 'email_smtp_relays', 'disable_log', 'account', 'disable_log',            'pkey',   '1.0a100', null);
