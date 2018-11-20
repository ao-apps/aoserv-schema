select "schema".add_foreign_key('httpd', 'httpd_site_binds', 'httpd_site',             'httpd_sites',      'pkey',     '1.0a100', null);
select "schema".add_foreign_key('httpd', 'httpd_site_binds', 'httpd_bind',             'httpd_binds',      'net_bind', '1.0a100', null);
select "schema".add_foreign_key('httpd', 'httpd_site_binds', 'certificate', 'pki',     'ssl_certificates', 'pkey',     '1.81.10', null);
select "schema".add_foreign_key('httpd', 'httpd_site_binds', 'disable_log', 'account', 'disable_log',      'pkey',     '1.0a100', null);
