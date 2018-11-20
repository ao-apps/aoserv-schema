select "schema".add_column('httpd', 'httpd_shared_tomcats', 'pkey',                    'pkey',    false,  true, false, 'pkey for this jvm', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'name',                    'string',  false, false, false, 'unique name for this jvm', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'ao_server',               'fkey',    false, false, false, 'the pkey of the server on which this jvm resides', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'version',                 'fkey',    false, false, false, 'the tomcat version', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'linux_server_account',    'fkey',    false, false, false, 'the account under which this tomcat runs', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'linux_server_group',      'fkey',    false, false, false, 'the group to which this tomcat is assigned', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'is_secure',               'boolean', false, false, false, 'is the jvm secure', '1.0a100', '1.81.9');
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'is_overflow',             'boolean', false, false, false, 'is an overflow JVM for several accounts', '1.0a100', '1.81.9');
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'config_backup_level',     'short',   false, false, false, 'the number of copies of config backups to store', '1.0a100', '1.30');
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'config_backup_retention', 'short',   false, false, false, 'the number of days backups are maintained', '1.0a100', '1.30');
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'file_backup_level',       'short',   false, false, false, 'the number of copies of backups to store', '1.0a100', '1.30');
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'file_backup_retention',   'short',   false, false, false, 'the number of days backups are maintained', '1.0a100', '1.30');
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'log_backup_level',        'short',   false, false, false, 'the number of copies of log file backups to store', '1.0a100', '1.30');
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'log_backup_retention',    'short',   false, false, false, 'the number of days backups are maintained', '1.0a100', '1.30');
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'disable_log',             'fkey',     true, false, false, 'indicates that the JVM is disabled', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'tomcat4_worker',          'fkey',     true,  true, false, 'the httpd_worker for Tomcat version 4', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'tomcat4_shutdown_port',   'fkey',     true,  true, false, 'the port that will shut down this JVM', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'tomcat4_shutdown_key',    'string',   true, false, false, 'the key used to shut down the JVM', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'is_manual',               'boolean', false, false, false, 'the configuration files are manually maintained', '1.0a100', null);
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'max_post_size',           'int',      true, false, false, 'the maximum POST size allowed', '1.80.1', null);
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'unpack_wars',             'boolean', false, false, false, 'the unpackWARs setting for this Tomcat', '1.80.1', null);
select "schema".add_column('httpd', 'httpd_shared_tomcats', 'auto_deploy',             'boolean', false, false, false, 'the autoDeploy setting for this Tomcat', '1.80.1', null);
