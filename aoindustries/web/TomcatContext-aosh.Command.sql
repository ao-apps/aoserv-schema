select aosh.add_command(
  'add_httpd_tomcat_context',
  'web',
  'httpd_tomcat_contexts',
  'adds a context (webapp) to a Tomcat site',
  '<i>site_name</i> <i>ao_server</i> {""|<i>class_name</i>} <i>use_cookies</i> <i>cross_context</i> <i>doc_base</i> <i>allow_override</i> <i>path</i> <i>is_privileged</i> <i>is_reloadable</i> <i>use_naming</i> {""|<i>wrapper_class</i>} <i>debug_level</i> {""|<i>work_dir</i>}',
  '1.0a100',
  '1.81.2'
);
select aosh.add_command(
  'add_httpd_tomcat_context',
  'web',
  'httpd_tomcat_contexts',
  'adds a context (webapp) to a Tomcat site',
  '<i>site_name</i> <i>ao_server</i> {""|<i>class_name</i>} <i>use_cookies</i> <i>cross_context</i> <i>doc_base</i> <i>allow_override</i> <i>path</i> <i>is_privileged</i> <i>is_reloadable</i> <i>use_naming</i> {""|<i>wrapper_class</i>} <i>debug_level</i> {""|<i>work_dir</i>} <i>server_xml_configured</i>',
  '1.81.3',
  null
);
select aosh.add_command(
  'remove_httpd_tomcat_context',
  'web',
  'httpd_tomcat_contexts',
  'removes a context (webapp) from a Tomcat site',
  '<i>pkey</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_httpd_tomcat_context_attributes',
  'web',
  'httpd_tomcat_contexts',
  'sets the attributes for a context (webapp) on a Tomcat site',
  '<i>site_name</i> <i>ao_server</i> <i>old_path</i> {""|<i>class_name</i>} <i>use_cookies</i> <i>cross_context</i> <i>doc_base</i> <i>allow_override</i> <i>new_path</i> <i>is_privileged</i> <i>is_reloadable</i> <i>use_naming</i> {""|<i>wrapper_class</i>} <i>debug_level</i> {""|<i>work_dir</i>}',
  '1.0a100',
  '1.81.2'
);
select aosh.add_command(
  'set_httpd_tomcat_context_attributes',
  'web',
  'httpd_tomcat_contexts',
  'sets the attributes for a context (webapp) on a Tomcat site',
  '<i>site_name</i> <i>ao_server</i> <i>old_path</i> {""|<i>class_name</i>} <i>use_cookies</i> <i>cross_context</i> <i>doc_base</i> <i>allow_override</i> <i>new_path</i> <i>is_privileged</i> <i>is_reloadable</i> <i>use_naming</i> {""|<i>wrapper_class</i>} <i>debug_level</i> {""|<i>work_dir</i>} <i>server_xml_configured</i>',
  '1.81.3',
  null
);
