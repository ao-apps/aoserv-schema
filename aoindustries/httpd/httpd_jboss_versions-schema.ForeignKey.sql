select "schema".add_foreign_key('httpd', 'httpd_jboss_versions', 'version',        'public', 'technology_versions',   'pkey',    '1.0a100', null);
select "schema".add_foreign_key('httpd', 'httpd_jboss_versions', 'tomcat_version', 'httpd',  'httpd_tomcat_versions', 'version', '1.0a100', null);
