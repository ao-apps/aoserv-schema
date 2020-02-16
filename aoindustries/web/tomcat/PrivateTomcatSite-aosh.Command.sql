select aosh.add_command(
  'add_httpd_tomcat_std_site',
  'web.tomcat',
  'httpd_tomcat_std_sites',
  'creates a new web site space running a standard Tomcat configuration',
  '<i>ao_server</i> <i>site_name</i> <i>package</i> <i>username</i> <i>group</i> <i>server_admin</i> <i>use_apache</i> {""|<i>ip_address</i>} {""|<i>net_device</i>} <i>tomcat_version</i> <i>primary_http_hostname</i> {""|<i>content_source</i>} [<i>alternate_http_hostname</i>]...',
  '1.0a100',
  '1.80.0'
);
select aosh.add_command(
  'add_httpd_tomcat_std_site',
  'web.tomcat',
  'httpd_tomcat_std_sites',
  'creates a new web site space running a standard Tomcat configuration',
  '<i>ao_server</i> <i>site_name</i> <i>package</i> <i>username</i> <i>group</i> <i>server_admin</i> <i>use_apache</i> {""|<i>ip_address</i>} {""|<i>net_device</i>} <i>tomcat_version</i> <i>primary_http_hostname</i> {""|<i>content_source</i>} {""|<i>php_version</i>} <i>enable_cgi</i> <i>enable_ssi</i> <i>enable_htaccess</i> <i>enable_indexes</i> <i>enable_follow_symlinks</i> [<i>alternate_http_hostname</i>]...',
  '1.80.1',
  '1.81.5'
);
select aosh.add_command(
  'add_httpd_tomcat_std_site',
  'web.tomcat',
  'httpd_tomcat_std_sites',
  'creates a new web site space running a standard Tomcat configuration',
  '<i>ao_server</i> <i>site_name</i> <i>package</i> <i>username</i> <i>group</i> <i>server_admin</i> <i>use_apache</i> {""|<i>ip_address</i>} {""|<i>net_device</i>} <i>tomcat_version</i> <i>primary_http_hostname</i> {""|<i>content_source</i>} [<i>alternate_http_hostname</i>]...',
  '1.81.6',
  '1.81.9'
);
select aosh.add_command(
  'add_httpd_tomcat_std_site',
  'web.tomcat',
  'httpd_tomcat_std_sites',
  'creates a new web site space running a standard Tomcat configuration',
  '<i>ao_server</i> <i>site_name</i> <i>package</i> <i>username</i> <i>group</i> <i>server_admin</i> <i>use_apache</i> {""|<i>ip_address</i>} {""|<i>net_device</i>} <i>tomcat_version</i> <i>primary_http_hostname</i> [<i>alternate_http_hostname</i>]...',
  '1.81.10',
  null
);
select aosh.add_command(
  'set_httpd_tomcat_std_site_max_post_size',
  'web.tomcat',
  'httpd_tomcat_std_sites',
  'sets the maximum POST size for a standard Tomcat installation',
  '<i>site_name</i> <i>ao_server</i> {""|<i>max_post_size</i>}',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_tomcat_std_site_unpack_wars',
  'web.tomcat',
  'httpd_tomcat_std_sites',
  'sets the unpackWARs setting for a standard Tomcat installation',
  '<i>site_name</i> <i>ao_server</i> <i>unpack_wars</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_tomcat_std_site_auto_deploy',
  'web.tomcat',
  'httpd_tomcat_std_sites',
  'sets the autoDeploy setting for a standard Tomcat installation',
  '<i>site_name</i> <i>ao_server</i> <i>auto_deploy</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'web.tomcat.PrivateTomcatSite.tomcatAuthentication.set',
  'web.tomcat',
  'httpd_tomcat_std_sites',
  'sets the tomcatAuthentication setting for a standard Tomcat installation',
  '<i>site_name</i> <i>ao_server</i> <i>tomcatAuthentication</i>',
  '1.83.2',
  null
);
select aosh.add_command(
  'set_httpd_tomcat_std_site_version',
  'web.tomcat',
  'httpd_tomcat_std_sites',
  'sets the Tomcat version for a standard Tomcat installation',
  '<i>site_name</i> <i>ao_server</i> <i>series</i>[.<i>major</i>[.<i>minor</i>]]',
  '1.81.12',
  null
);
