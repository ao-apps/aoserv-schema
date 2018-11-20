select aosh.add_command(
  'check_site_name',
  'httpd',
  'httpd_sites',
  'checks the format of a site name',
  '<i>site_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'disable_httpd_site',
  'httpd',
  'httpd_sites',
  'disables a web site, including its Java virtual machine and all network ports',
  '<i>site_name</i> <i>ao_server</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_httpd_site',
  'httpd',
  'httpd_sites',
  'enables a web site, including its Java virtual machine and all network ports',
  '<i>site_name</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'generate_site_name',
  'httpd',
  'httpd_sites',
  'generates a unique site name based on a template',
  '<i>template</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'get_awstats_file',
  'httpd',
  'httpd_sites',
  'gets a file from the AWStats report',
  '<i>site_name</i> <i>ao_server</i> <i>path</i> {""|<i>query_string</i>}',
  '1.0a128',
  null
);
select aosh.add_command(
  'initialize_httpd_site_passwd_file',
  'httpd',
  'httpd_sites',
  'creates the default conf/passwd file',
  '<i>site_name</i> <i>ao_server</i> <i>username</i> <i>password</i>',
  '1.0a100',
  '1.0a128'
);
select aosh.add_command(
  'is_site_name_available',
  'httpd',
  'httpd_sites',
  'determines if a site name is available',
  '<i>site_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_httpd_site',
  'httpd',
  'httpd_sites',
  'removes a web site from the servers',
  '<i>site_name</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_httpd_site_config_backup_retention',
  'httpd',
  'httpd_sites',
  'sets the config file backup retention for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_httpd_site_file_backup_retention',
  'httpd',
  'httpd_sites',
  'sets the file backup retention for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_httpd_site_ftp_backup_retention',
  'httpd',
  'httpd_sites',
  'sets the ftp file backup retention for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_httpd_site_is_manual',
  'httpd',
  'httpd_sites',
  'sets the is_manual flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>is_manual</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_httpd_site_log_backup_retention',
  'httpd',
  'httpd_sites',
  'sets the log file backup retention for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>backup_retention</i>',
  '1.0a100',
  '1.30'
);
select aosh.add_command(
  'set_httpd_site_server_admin',
  'httpd',
  'httpd_sites',
  'sets the administrative email address for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>email_address</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_httpd_site_php_version',
  'httpd',
  'httpd_sites',
  'sets the PHP version for a web site',
  '<i>site_name</i> <i>ao_server</i> {""|<i>php_version</i>}',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_site_enable_cgi',
  'httpd',
  'httpd_sites',
  'sets the enable_cgi flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>enable_cgi</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_site_enable_ssi',
  'httpd',
  'httpd_sites',
  'sets the enable_ssi flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>enable_ssi</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_site_enable_htaccess',
  'httpd',
  'httpd_sites',
  'sets the enable_htaccess flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>enable_htaccess</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_site_enable_indexes',
  'httpd',
  'httpd_sites',
  'sets the enable_indexes flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>enable_indexes</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_site_enable_follow_symlinks',
  'httpd',
  'httpd_sites',
  'sets the enable_follow_symlinks flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>enable_follow_symlinks</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_site_enable_anonymous_ftp',
  'httpd',
  'httpd_sites',
  'sets the enable_anonymous_ftp flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>enable_anonymous_ftp</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_site_block_trace_track',
  'httpd',
  'httpd_sites',
  'sets the block_trace_track flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>block_trace_track</i>',
  '1.81.6',
  null
);
select aosh.add_command(
  'set_httpd_site_block_scm',
  'httpd',
  'httpd_sites',
  'sets the block_scm flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>block_scm</i>',
  '1.81.6',
  null
);
select aosh.add_command(
  'set_httpd_site_block_core_dumps',
  'httpd',
  'httpd_sites',
  'sets the block_core_dumps flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>block_core_dumps</i>',
  '1.81.6',
  null
);
select aosh.add_command(
  'set_httpd_site_block_editor_backups',
  'httpd',
  'httpd_sites',
  'sets the block_editor_backups flag for a web site',
  '<i>site_name</i> <i>ao_server</i> <i>block_editor_backups</i>',
  '1.81.6',
  null
);
select aosh.add_command(
  'wait_for_httpd_site_rebuild',
  'httpd',
  'httpd_sites',
  'waits for any pending or processing changes to complete',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
