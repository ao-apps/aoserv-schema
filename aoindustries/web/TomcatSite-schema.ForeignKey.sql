select "schema".add_foreign_key('web', 'httpd_tomcat_sites', 'httpd_site', 'web', 'httpd_sites',           'pkey',    '1.0a100', null);
select "schema".add_foreign_key('web', 'httpd_tomcat_sites', 'version',    'web', 'httpd_tomcat_versions', 'version', '1.0a100', null);
