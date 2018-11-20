select "schema".add_foreign_key('httpd', 'httpd_servers', 'ao_server',            'public',  'ao_servers',            'server', '1.0a100', null);
select "schema".add_foreign_key('httpd', 'httpd_servers', 'linux_server_account', 'public',  'linux_server_accounts', 'pkey',   '1.0a102', null);
select "schema".add_foreign_key('httpd', 'httpd_servers', 'linux_server_group',   'public',  'linux_server_groups',   'pkey',   '1.0a102', null);
select "schema".add_foreign_key('httpd', 'httpd_servers', 'mod_php_version',      'public',  'technology_versions',   'pkey',   '1.0a102', null);
select "schema".add_foreign_key('httpd', 'httpd_servers', 'package',              'billing', 'packages',              'pkey',   '1.0a102', null);
