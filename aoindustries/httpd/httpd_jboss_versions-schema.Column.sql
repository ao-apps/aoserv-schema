select "schema".add_column('httpd', 'httpd_jboss_versions', 'version', 0, 'pkey', false, true, true, 'jboss version designator', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_jboss_versions', 'tomcat_version', 1, 'fkey', false, false, true, 'version of tomcat associated with this jboss version', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_jboss_versions', 'template_dir', 2, 'string', false, false, true, 'directory containing the install template', '1.0a100', null);
