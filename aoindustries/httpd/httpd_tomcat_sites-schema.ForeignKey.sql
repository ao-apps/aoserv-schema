select "schema".add_foreign_key('httpd', 'httpd_tomcat_sites', 'httpd_site', 'httpd', 'httpd_sites',           'pkey',    '1.0a100', null);
select "schema".add_foreign_key('httpd', 'httpd_tomcat_sites', 'version',    'httpd', 'httpd_tomcat_versions', 'version', '1.0a100', null);
