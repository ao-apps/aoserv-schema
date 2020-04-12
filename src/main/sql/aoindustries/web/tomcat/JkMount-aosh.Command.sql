select aosh.add_command(
  'add_httpd_tomcat_site_jk_mount',
  'web.tomcat',
  'httpd_tomcat_site_jk_mounts',
  'adds a JkMount or JkUnMount to a Tomcat site',
  '<i>site_name</i> <i>ao_server</i> <i>path</i> <i>mount</i>',
  '1.81.6',
  null
);
select aosh.add_command(
  'remove_httpd_tomcat_site_jk_mount',
  'web.tomcat',
  'httpd_tomcat_site_jk_mounts',
  'removes a JkMount or JkUnMount from a Tomcat site',
  '<i>site_name</i> <i>ao_server</i> <i>path</i>',
  '1.81.6',
  null
);
