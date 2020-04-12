select "schema".add_foreign_key('web.tomcat', 'httpd_tomcat_shared_sites', 'tomcat_site',         'web.tomcat', 'httpd_tomcat_sites',   'httpd_site', '1.0a100', null);
select "schema".add_foreign_key('web.tomcat', 'httpd_tomcat_shared_sites', 'httpd_shared_tomcat', 'web.tomcat', 'httpd_shared_tomcats', 'pkey',       '1.0a100', null);
