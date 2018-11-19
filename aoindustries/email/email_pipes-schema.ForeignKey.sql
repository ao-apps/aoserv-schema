select "schema".add_foreign_key('email', 'email_pipes', 'ao_server',   'public', 'ao_servers',  'server', '1.0a100', null);
select "schema".add_foreign_key('email', 'email_pipes', 'package',     'public', 'packages',    'name',   '1.0a100', '1.80');
select "schema".add_foreign_key('email', 'email_pipes', 'package',     'public', 'packages',    'name',   '1.80.0',  null);
select "schema".add_foreign_key('email', 'email_pipes', 'disable_log', 'public', 'disable_log', 'pkey',   '1.0a100', null);
