select "schema".add_foreign_key('mysql_servers', 'ao_server', 'ao_servers', 'server', '1.4', null);
select "schema".add_foreign_key('mysql_servers', 'version', 'technology_versions', 'pkey', '1.4', null);
select "schema".add_foreign_key('mysql_servers', 'net_bind', 'net_binds', 'pkey', '1.4', null);
select "schema".add_foreign_key('mysql_servers', 'package', 'packages', 'name', '1.28', '1.80');
select "schema".add_foreign_key('mysql_servers', 'package', 'packages', 'name', '1.80.0', null);
