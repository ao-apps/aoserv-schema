select aosh.add_command(
  'set_httpd_tomcat_site_use_apache',
  'web.tomcat',
  'httpd_tomcat_sites',
  'sets the use_apache flag for a Tomcat-enabled web site',
  '<i>site_name</i> <i>ao_server</i> <i>use_apache</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_tomcat_site_block_webinf',
  'web.tomcat',
  'httpd_tomcat_sites',
  'sets the block_webinf flag for a Tomcat-enabled web site',
  '<i>site_name</i> <i>ao_server</i> <i>block_webinf</i>',
  '1.81.6',
  null
);
select aosh.add_command(
  'start_jvm',
  'web.tomcat',
  'httpd_tomcat_sites',
  'starts the Java VM',
  '<i>site_name</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'stop_jvm',
  'web.tomcat',
  'httpd_tomcat_sites',
  'stops the Java VM',
  '<i>site_name</i> <i>ao_server</i>',
  '1.0a100',
  null
);
