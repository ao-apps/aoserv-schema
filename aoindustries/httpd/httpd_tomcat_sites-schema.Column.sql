select "schema".add_column('httpd', 'httpd_tomcat_sites', 'httpd_site',   'fkey',    false,  true, false, 'the site that this Tomcat is running in', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_tomcat_sites', 'version',      'fkey',    false, false, false, 'the version of tomcat that is being ran', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_tomcat_sites', 'use_apache',   'boolean', false, false, false, 'determines if Apache serves the static site content', '1.0a100', '1.81.5');
select "schema".add_column('httpd', 'httpd_tomcat_sites', 'block_webinf', 'boolean', false, false, false, 'Blocks access to /META-INF and /WEB-INF at the Apache level.', '1.81.6', null);
