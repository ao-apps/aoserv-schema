select "schema".add_foreign_key('web', 'httpd_jboss_versions', 'version',        'distribution', 'technology_versions',   'pkey',    '1.0a100', null);
select "schema".add_foreign_key('web', 'httpd_jboss_versions', 'tomcat_version', 'web',          'httpd_tomcat_versions', 'version', '1.0a100', null);
