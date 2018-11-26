select aosh.add_command(
  'add_httpd_tomcat_parameter',
  'web.tomcat',
  'httpd_tomcat_parameters',
  'adds a parameter to a Tomcat context (webapp)',
  '<i>site_name</i> <i>ao_server</i> <i>path</i> <i>name</i> <i>value</i> <i>override</i> {""|<i>description</i>}',
  '1.5',
  null
);
select aosh.add_command(
  'remove_httpd_tomcat_parameter',
  'web.tomcat',
  'httpd_tomcat_parameters',
  'removes a parameter from a Tomcat context (webapp)',
  '<i>pkey</i>',
  '1.5',
  null
);
select aosh.add_command(
  'update_httpd_tomcat_parameter',
  'web.tomcat',
  'httpd_tomcat_parameters',
  'updates a Tomcat context (webapp) parameter',
  '<i>site_name</i> <i>ao_server</i> <i>path</i> <i>old_name</i> <i>new_name</i> <i>value</i> <i>override</i> {""|<i>description</i>}',
  '1.5',
  null
);
