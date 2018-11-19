select "schema".add_column('mysql', 'mysql_servers', 'pkey', 0, 'pkey', false, true, false, 'a unique, generated primary key', '1.4', null);
select "schema".add_column('mysql', 'mysql_servers', 'name', 1, 'string', false, false, false, 'the name of the server', '1.4', '1.80');
select "schema".add_column('mysql', 'mysql_servers', 'name', 2, 'mysql_server_name', false, false, false, 'the name of the server', '1.80.0', null);
select "schema".add_column('mysql', 'mysql_servers', 'ao_server', 3, 'fkey', false, false, false, 'the pkey of the server that this database is hosted on', '1.4', null);
select "schema".add_column('mysql', 'mysql_servers', 'version', 4, 'fkey', false, false, false, 'the pkey of the MySQL version', '1.4', null);
select "schema".add_column('mysql', 'mysql_servers', 'max_connections', 5, 'int', false, false, false, 'the maximum number of connections for the db', '1.4', null);
select "schema".add_column('mysql', 'mysql_servers', 'net_bind', 6, 'fkey', false, true, false, 'the port the server binds to', '1.4', null);
select "schema".add_column('mysql', 'mysql_servers', 'package', 7, 'string', false, false, false, 'the package who owns the instance', '1.28', '1.80');
select "schema".add_column('mysql', 'mysql_servers', 'package', 8, 'accounting', false, false, false, 'the package who owns the instance', '1.80.0', null);
