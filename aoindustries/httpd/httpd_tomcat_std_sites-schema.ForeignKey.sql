select "schema".add_foreign_key('httpd', 'httpd_tomcat_std_sites', 'tomcat_site',                  'httpd_tomcat_sites', 'httpd_site', '1.0a100', null);
select "schema".add_foreign_key('httpd', 'httpd_tomcat_std_sites', 'tomcat4_shutdown_port', 'net', 'net_binds',          'pkey',       '1.0a100', null);
