select "schema".add_column('httpd', 'httpd_jboss_sites', 'tomcat_site',     'pkey', false,  true, false, 'the tomcat site', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_jboss_sites', 'version',         'fkey', false, false, false, 'reference to httpd_jboss_versions', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_jboss_sites', 'jnp_bind',        'fkey', false, false, false, 'reference to net_binds', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_jboss_sites', 'webserver_bind',  'fkey', false, false, false, 'reference to net_binds', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_jboss_sites', 'rmi_bind',        'fkey', false, false, false, 'reference to net_binds', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_jboss_sites', 'hypersonic_bind', 'fkey', false, false, false, 'reference to net_binds', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_jboss_sites', 'jmx_bind',        'fkey', false, false, false, 'reference to net_binds', '1.0a100', null);
