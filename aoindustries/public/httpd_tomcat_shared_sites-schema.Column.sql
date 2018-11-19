select "schema".add_column('httpd_tomcat_shared_sites', 'tomcat_site', 0, 'pkey', false, true, false, 'the tomcat site', '1.0a100', null);
select "schema".add_column('httpd_tomcat_shared_sites', 'httpd_shared_tomcat', 1, 'fkey', false, false, false, 'the shared JVM', '1.0a100', null);
