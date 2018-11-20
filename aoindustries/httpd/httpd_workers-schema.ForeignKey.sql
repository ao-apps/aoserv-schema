select "schema".add_foreign_key('httpd', 'httpd_workers', 'code',        'httpd', 'httpd_jk_codes',     'code',       '1.0a100', null);
select "schema".add_foreign_key('httpd', 'httpd_workers', 'net_bind',    'net',   'net_binds',          'pkey',       '1.0a100', null);
select "schema".add_foreign_key('httpd', 'httpd_workers', 'tomcat_site', 'httpd', 'httpd_tomcat_sites', 'httpd_site', '1.0a100', null);
