select "schema".add_column('web/tomcat', 'httpd_tomcat_std_sites', 'tomcat_site',           'fkey',    false,  true, false, 'the site that this Tomcat is running in', '1.0a100', null);
select "schema".add_column('web/tomcat', 'httpd_tomcat_std_sites', 'tomcat4_shutdown_port', 'fkey',     true,  true, false, 'the port that will shut down this JVM', '1.0a100', null);
select "schema".add_column('web/tomcat', 'httpd_tomcat_std_sites', 'tomcat4_shutdown_key',  'string',   true, false, false, 'the key used to shut down the JVM', '1.0a100', null);
select "schema".add_column('web/tomcat', 'httpd_tomcat_std_sites', 'max_post_size',         'int',      true, false, false, 'the maximum POST size allowed', '1.80.1', null);
select "schema".add_column('web/tomcat', 'httpd_tomcat_std_sites', 'unpack_wars',           'boolean', false, false, false, 'the unpackWARs setting for this Tomcat', '1.80.1', null);
select "schema".add_column('web/tomcat', 'httpd_tomcat_std_sites', 'auto_deploy',           'boolean', false, false, false, 'the autoDeploy setting for this Tomcat', '1.80.1', null);
