select "schema".add_foreign_key('mysql', 'mysql_servers', 'bind',      'net',          'net_binds',           'id',     '1.81.18', null);
select "schema".add_foreign_key('mysql', 'mysql_servers', 'ao_server', 'linux',        'ao_servers',          'server', '1.4',     null);
select "schema".add_foreign_key('mysql', 'mysql_servers', 'version',   'distribution', 'technology_versions', 'pkey',   '1.4',     null);
select "schema".add_foreign_key('mysql', 'mysql_servers', 'net_bind',  'net',          'net_binds',           'pkey',   '1.4',     '1.81.17');
select "schema".add_foreign_key('mysql', 'mysql_servers', 'package',   'billing',      'packages',            'name',   '1.28',    '1.80');
select "schema".add_foreign_key('mysql', 'mysql_servers', 'package',   'billing',      'packages',            'name',   '1.80.0',  '1.81.17');
