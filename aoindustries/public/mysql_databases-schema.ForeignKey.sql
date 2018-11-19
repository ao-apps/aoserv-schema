select "schema".add_foreign_key('mysql_databases', 'ao_server', 'ao_servers', 'server', '1.0a100', '1.3');
select "schema".add_foreign_key('mysql_databases', 'mysql_server', 'mysql_servers', 'pkey', '1.4', null);
select "schema".add_foreign_key('mysql_databases', 'package', 'packages', 'name', '1.0a100', '1.80');
select "schema".add_foreign_key('mysql_databases', 'package', 'packages', 'name', '1.80.0', null);
select "schema".add_foreign_key('mysql_databases', 'backup_level', 'backup_levels', 'level', '1.0a100', '1.30');
select "schema".add_foreign_key('mysql_databases', 'backup_retention', 'backup_retentions', 'days', '1.0a100', '1.30');
