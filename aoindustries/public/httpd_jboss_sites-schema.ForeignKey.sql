select "schema".add_foreign_key('httpd_jboss_sites', 'tomcat_site', 'httpd_tomcat_sites', 'httpd_site', '1.0a100', null);
select "schema".add_foreign_key('httpd_jboss_sites', 'version', 'httpd_jboss_versions', 'version', '1.0a100', null);
select "schema".add_foreign_key('httpd_jboss_sites', 'jnp_bind', 'net_binds', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('httpd_jboss_sites', 'webserver_bind', 'net_binds', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('httpd_jboss_sites', 'rmi_bind', 'net_binds', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('httpd_jboss_sites', 'hypersonic_bind', 'net_binds', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('httpd_jboss_sites', 'jmx_bind', 'net_binds', 'pkey', '1.0a100', null);
