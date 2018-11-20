select aosh.add_command(
  'add_httpd_jboss_site',
  'httpd',
  'httpd_jboss_sites',
  'creates a new web site space running a JBoss configuration',
  '<i>ao_server</i> <i>site_name</i> <i>package</i> <i>username</i> <i>group</i> <i>server_admin_email</i> <i>use_apache</i> {""|<i>ip_address</i>} {""|<i>net_device</i>} <i>jboss_version</i> <i>primary_http_hostname</i> {""|<i>content_source</i>} [<i>alternate_http_hostname</i>]...',
  '1.0a100',
  '1.80.0'
);
select aosh.add_command(
  'add_httpd_jboss_site',
  'httpd',
  'httpd_jboss_sites',
  'creates a new web site space running a JBoss configuration',
  '<i>ao_server</i> <i>site_name</i> <i>package</i> <i>username</i> <i>group</i> <i>server_admin_email</i> <i>use_apache</i> {""|<i>ip_address</i>} {""|<i>net_device</i>} <i>jboss_version</i> <i>primary_http_hostname</i> {""|<i>content_source</i>} {""|<i>php_version</i>} <i>enable_cgi</i> <i>enable_ssi</i> <i>enable_htaccess</i> <i>enable_indexes</i> <i>enable_follow_symlinks</i> [<i>alternate_http_hostname</i>]...',
  '1.80.1',
  '1.81.5'
);
select aosh.add_command(
  'add_httpd_jboss_site',
  'httpd',
  'httpd_jboss_sites',
  'creates a new web site space running a JBoss configuration',
  '<i>ao_server</i> <i>site_name</i> <i>package</i> <i>username</i> <i>group</i> <i>server_admin_email</i> <i>use_apache</i> {""|<i>ip_address</i>} {""|<i>net_device</i>} <i>jboss_version</i> <i>primary_http_hostname</i> {""|<i>content_source</i>} [<i>alternate_http_hostname</i>]...',
  '1.81.6',
  '1.81.9'
);
select aosh.add_command(
  'add_httpd_jboss_site',
  'httpd',
  'httpd_jboss_sites',
  'creates a new web site space running a JBoss configuration',
  '<i>ao_server</i> <i>site_name</i> <i>package</i> <i>username</i> <i>group</i> <i>server_admin_email</i> <i>use_apache</i> {""|<i>ip_address</i>} {""|<i>net_device</i>} <i>jboss_version</i> <i>primary_http_hostname</i> [<i>alternate_http_hostname</i>]...',
  '1.81.10',
  null
);
