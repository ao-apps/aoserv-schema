select "schema".add_column('httpd_tomcat_versions', 'version', 0, 'fkey', false, true, true, 'a reference to the tomcat details in the <code>technology_versions</code> table', '1.0a100', null);
select "schema".add_column('httpd_tomcat_versions', 'install_dir', 1, 'path', false, false, true, 'the directory the basic install files are located in', '1.0a100', null);
select "schema".add_column('httpd_tomcat_versions', 'requires_mod_jk', 2, 'boolean', false, false, true, 'indicates that this version of Tomcat requires the use of mod_jk', '1.0a100', null);
