select "schema".add_foreign_key('mysql', 'mysql_server_users', 'username',                'mysql_users',   'username', '1.0a100', '1.80');
select "schema".add_foreign_key('mysql', 'mysql_server_users', 'username',                'mysql_users',   'username', '1.80.0',  null);
select "schema".add_foreign_key('mysql', 'mysql_server_users', 'ao_server',    'server',  'ao_servers',    'server',   '1.0a100', '1.3');
select "schema".add_foreign_key('mysql', 'mysql_server_users', 'mysql_server',            'mysql_servers', 'pkey',     '1.4',     null);
select "schema".add_foreign_key('mysql', 'mysql_server_users', 'disable_log',  'account', 'disable_log',   'pkey',     '1.0a100', null);
