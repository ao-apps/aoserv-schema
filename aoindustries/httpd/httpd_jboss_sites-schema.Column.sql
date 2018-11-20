select "schema".add_column('httpd', 'httpd_jboss_sites', 'tomcat_site', 0, 'pkey', false, true, false, 'the tomcat site', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_jboss_sites', 'version', 1, 'fkey', false, false, false, 'reference to httpd_jboss_versions', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_jboss_sites', 'jnp_bind', 2, 'fkey', false, false, false, 'reference to net_binds', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_jboss_sites', 'webserver_bind', 3, 'fkey', false, false, false, 'reference to net_binds', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_jboss_sites', 'rmi_bind', 4, 'fkey', false, false, false, 'reference to net_binds', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_jboss_sites', 'hypersonic_bind', 5, 'fkey', false, false, false, 'reference to net_binds', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_jboss_sites', 'jmx_bind', 6, 'fkey', false, false, false, 'reference to net_binds', '1.0a100', null);
