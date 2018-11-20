select "schema".add_foreign_key('httpd', 'httpd_tomcat_shared_sites', 'tomcat_site',         'httpd', 'httpd_tomcat_sites',   'httpd_site', '1.0a100', null);
select "schema".add_foreign_key('httpd', 'httpd_tomcat_shared_sites', 'httpd_shared_tomcat', 'httpd', 'httpd_shared_tomcats', 'pkey',       '1.0a100', null);
