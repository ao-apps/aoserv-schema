select "schema".add_column('mysql', 'mysql_hosts', 'pkey',      'pkey',   false,  true, false, 'a genenrated primary key', '1.0a100', '1.3');
select "schema".add_column('mysql', 'mysql_hosts', 'ao_server', 'fkey',   false, false, false, 'the pkey of the mysql server', '1.0a100', '1.3');
select "schema".add_column('mysql', 'mysql_hosts', 'host',      'string', false, false, false, 'the hostname that is allowed to connect', '1.0a100', '1.3');
