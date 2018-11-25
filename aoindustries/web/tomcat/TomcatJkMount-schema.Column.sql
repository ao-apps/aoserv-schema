select "schema".add_column('web/tomcat', 'httpd_tomcat_site_jk_mounts', 'pkey',              'pkey',    false,  true, false, 'a generated primary key',               '1.81.6', null);
select "schema".add_column('web/tomcat', 'httpd_tomcat_site_jk_mounts', 'httpd_tomcat_site', 'fkey',    false, false, false, 'the Tomcat site that is being mounted', '1.81.6', null);
select "schema".add_column('web/tomcat', 'httpd_tomcat_site_jk_mounts', 'path',              'string',  false, false, false, 'the per-site unique pattern matched',   '1.81.6', null);
select "schema".add_column('web/tomcat', 'httpd_tomcat_site_jk_mounts', 'mount',             'boolean', false, false, false, 'true for JkMount, false for JkUnMount', '1.81.6', null);
