select "schema".add_foreign_key('httpd', 'httpd_binds', 'net_bind',     'net',   'net_binds',     'pkey', '1.0a100', null);
select "schema".add_foreign_key('httpd', 'httpd_binds', 'httpd_server', 'httpd', 'httpd_servers', 'pkey', '1.0a100', null);
