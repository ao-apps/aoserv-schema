select "schema".add_foreign_key('mysql', 'mysql_servers', 'ao_server', 'public', 'ao_servers',          'server', '1.4',    null);
select "schema".add_foreign_key('mysql', 'mysql_servers', 'version',   'public', 'technology_versions', 'pkey',   '1.4',    null);
select "schema".add_foreign_key('mysql', 'mysql_servers', 'net_bind',  'net',    'net_binds',           'pkey',   '1.4',    null);
select "schema".add_foreign_key('mysql', 'mysql_servers', 'package',   'public', 'packages',            'name',   '1.28',  '1.80');
select "schema".add_foreign_key('mysql', 'mysql_servers', 'package',   'public', 'packages',            'name',   '1.80.0', null);
