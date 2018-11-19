select "schema".add_foreign_key('httpd_workers', 'code', 'httpd_jk_codes', 'code', '1.0a100', null);
select "schema".add_foreign_key('httpd_workers', 'net_bind', 'net_binds', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('httpd_workers', 'tomcat_site', 'httpd_tomcat_sites', 'httpd_site', '1.0a100', null);
