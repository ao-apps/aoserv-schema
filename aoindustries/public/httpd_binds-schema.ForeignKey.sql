select "schema".add_foreign_key('public', 'httpd_binds', 'net_bind',     'net', 'net_binds',     'pkey', '1.0a100', null);
select "schema".add_foreign_key(          'httpd_binds', 'httpd_server',        'httpd_servers', 'pkey', '1.0a100', null);
