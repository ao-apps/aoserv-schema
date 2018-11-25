select "schema".add_column('web/jboss', 'httpd_jboss_versions', 'version',        'pkey',   false,  true, true, 'jboss version designator', '1.0a100', null);
select "schema".add_column('web/jboss', 'httpd_jboss_versions', 'tomcat_version', 'fkey',   false, false, true, 'version of tomcat associated with this jboss version', '1.0a100', null);
select "schema".add_column('web/jboss', 'httpd_jboss_versions', 'template_dir',   'string', false, false, true, 'directory containing the install template', '1.0a100', null);
