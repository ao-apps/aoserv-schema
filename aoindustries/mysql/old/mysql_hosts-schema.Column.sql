select "schema".add_column('mysql', 'mysql_hosts', 'pkey', 0, 'pkey', false, true, false, 'a genenrated primary key', '1.0a100', '1.3');
select "schema".add_column('mysql', 'mysql_hosts', 'ao_server', 1, 'fkey', false, false, false, 'the pkey of the mysql server', '1.0a100', '1.3');
select "schema".add_column('mysql', 'mysql_hosts', 'host', 2, 'string', false, false, false, 'the hostname that is allowed to connect', '1.0a100', '1.3');
