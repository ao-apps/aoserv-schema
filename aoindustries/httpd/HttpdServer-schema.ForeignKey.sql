select "schema".add_foreign_key('httpd', 'httpd_servers', 'ao_server',            'server',       'ao_servers',            'server', '1.0a100', null);
select "schema".add_foreign_key('httpd', 'httpd_servers', 'linux_server_account', 'linux',        'linux_server_accounts', 'pkey',   '1.0a102', null);
select "schema".add_foreign_key('httpd', 'httpd_servers', 'linux_server_group',   'linux',        'linux_server_groups',   'pkey',   '1.0a102', null);
select "schema".add_foreign_key('httpd', 'httpd_servers', 'mod_php_version',      'distribution', 'technology_versions',   'pkey',   '1.0a102', null);
select "schema".add_foreign_key('httpd', 'httpd_servers', 'package',              'billing',      'packages',              'pkey',   '1.0a102', null);
