select aosh.add_command(
  'add_httpd_tomcat_data_source',
  'web/tomcat',
  'httpd_tomcat_data_sources',
  'adds a data source to a Tomcat context (webapp)',
  '<i>site_name</i> <i>ao_server</i> <i>path</i> <i>name</i> <i>driver_class_name</i> <i>url</i> <i>username</i> <i>password</i> <i>max_active</i> <i>max_idle</i> <i>max_wait</i> {""|<i>validation_query</i>}',
  '1.5',
  null
);
select aosh.add_command(
  'remove_httpd_tomcat_data_source',
  'web/tomcat',
  'httpd_tomcat_data_sources',
  'removes a data source from a Tomcat context (webapp)',
  '<i>pkey</i>',
  '1.5',
  null
);
select aosh.add_command(
  'update_httpd_tomcat_data_source',
  'web/tomcat',
  'httpd_tomcat_data_sources',
  'updates a Tomcat context (webapp) data source',
  '<i>site_name</i> <i>ao_server</i> <i>path</i> <i>old_name</i> <i>new_name</i> <i>driver_class_name</i> <i>url</i> <i>username</i> <i>password</i> <i>max_active</i> <i>max_idle</i> <i>max_wait</i> {""|<i>validation_query</i>}',
  '1.5',
  null
);
