select "schema".add_column('web.tomcat', 'httpd_tomcat_shared_sites', 'tomcat_site',         'pkey', false,  true, false, 'the tomcat site', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_tomcat_shared_sites', 'httpd_shared_tomcat', 'fkey', false, false, false, 'the shared JVM', '1.0a100', null);
