select aosh.add_command(
  'add_httpd_shared_tomcat',
  'web',
  'httpd_shared_tomcats',
  'adds a new Multi-Site Tomcat JVM to a server',
  '<i>tomcat_name</i> <i>ao_server</i> <i>tomcat_version</i> <i>linux_server_account</i> <i>linux_server_group</i> <i>is_secure</i> <i>is_overflow</i>',
  '1.0a100',
  '1.81.9'
);
select aosh.add_command(
  'add_httpd_shared_tomcat',
  'web',
  'httpd_shared_tomcats',
  'adds a new Multi-Site Tomcat JVM to a server',
  '<i>tomcat_name</i> <i>ao_server</i> <i>tomcat_version</i> <i>linux_server_account</i> <i>linux_server_group</i>',
  '1.81.10',
  null
);
select aosh.add_command(
  'check_shared_tomcat_name',
  'web',
  'httpd_shared_tomcats',
  'checks the format of a Multi-Site Tomcat JVM name',
  '<i>shared_tomcat_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'disable_httpd_shared_tomcat',
  'web',
  'httpd_shared_tomcats',
  'disables a Multi-Site Tomcat JVM',
  '<i>name</i> <i>ao_server</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_httpd_shared_tomcat',
  'web',
  'httpd_shared_tomcats',
  'enables a Multi-Site Tomcat JVM',
  '<i>name</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'generate_shared_tomcat_name',
  'web',
  'httpd_shared_tomcats',
  'generates a unique Multi-Site Tomcat JVM name based on a template',
  '<i>template</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_shared_tomcat_name_available',
  'web',
  'httpd_shared_tomcats',
  'determines if a name may be used for a Multi-Site Tomcat JVM',
  '<i>name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_httpd_shared_tomcat',
  'web',
  'httpd_shared_tomcats',
  'removes a multi-site Tomcat JVM from the servers',
  '<i>name</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_httpd_shared_tomcat_config_backup_retention',
  'web',
  'httpd_shared_tomcats',
  'sets the config file backup retention for a Multi-Site Tomcat JVM',
  '<i>name</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_httpd_shared_tomcat_file_backup_retention',
  'web',
  'httpd_shared_tomcats',
  'sets the file backup retention for a Multi-Site Tomcat JVM',
  '<i>name</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_httpd_shared_tomcat_is_manual',
  'web',
  'httpd_shared_tomcats',
  'sets the is_manual flag for a Multi-Site Tomcat JVM',
  '<i>name</i> <i>ao_server</i> <i>is_manual</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_httpd_shared_tomcat_log_backup_retention',
  'web',
  'httpd_shared_tomcats',
  'sets the log file backup retention for a Multi-Site Tomcat JVM',
  '<i>name</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_httpd_shared_tomcat_max_post_size',
  'web',
  'httpd_shared_tomcats',
  'sets the maximum POST size for a Multi-Site Tomcat installation',
  '<i>name</i> <i>ao_server</i> {""|<i>max_post_size</i>}',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_shared_tomcat_unpack_wars',
  'web',
  'httpd_shared_tomcats',
  'sets the unpackWARs setting for a Multi-Site Tomcat installation',
  '<i>name</i> <i>ao_server</i> <i>unpack_wars</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_shared_tomcat_auto_deploy',
  'web',
  'httpd_shared_tomcats',
  'sets the autoDeploy setting for a Multi-Site Tomcat installation',
  '<i>name</i> <i>ao_server</i> <i>auto_deploy</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_shared_tomcat_version',
  'web',
  'httpd_shared_tomcats',
  'sets the Tomcat version for a Multi-Site Tomcat installation',
  '<i>name</i> <i>ao_server</i> <i>series</i>[.<i>major</i>[.<i>minor</i>]]',
  '1.81.12',
  null
);
