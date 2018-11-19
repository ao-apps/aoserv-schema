select "schema".add_foreign_key('httpd_servers', 'ao_server', 'ao_servers', 'server', '1.0a100', null);
select "schema".add_foreign_key('httpd_servers', 'linux_server_account', 'linux_server_accounts', 'pkey', '1.0a102', null);
select "schema".add_foreign_key('httpd_servers', 'linux_server_group', 'linux_server_groups', 'pkey', '1.0a102', null);
select "schema".add_foreign_key('httpd_servers', 'mod_php_version', 'technology_versions', 'pkey', '1.0a102', null);
select "schema".add_foreign_key('httpd_servers', 'package', 'packages', 'pkey', '1.0a102', null);
