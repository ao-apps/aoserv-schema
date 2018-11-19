\echo email_addresses
select "schema".add_column('email_addresses', 'pkey', 0, 'pkey', false, true, false, 'the primary key', '1.0a100', null);
select "schema".add_column('email_addresses', 'address', 1, 'string', false, false, false, 'address before the @', '1.0a100', null);
select "schema".add_column('email_addresses', 'domain', 2, 'fkey', false, false, false, 'the pkey of the email domain', '1.0a100', null);

\echo email_attachment_blocks
select "schema".add_column('email_attachment_blocks', 'pkey', 0, 'pkey', false, true, false, 'a unique, generated primary key', '1.0a116', null);
select "schema".add_column('email_attachment_blocks', 'linux_server_account', 1, 'fkey', false, false, false, 'reference to the email inbox', '1.0a116', null);
select "schema".add_column('email_attachment_blocks', 'extension', 2, 'string', false, false, false, 'the extension of the blocked files', '1.0a116', null);

\echo email_attachment_types
select "schema".add_column('email_attachment_types', 'extension', 0, 'string', false, true, true, 'the unique filename extension', '1.0a116', null);
select "schema".add_column('email_attachment_types', 'description', 1, 'string', false, false, true, 'a brief description of the attachment type', '1.0a116', null);
select "schema".add_column('email_attachment_types', 'is_default_block', 2, 'boolean', false, false, true, 'indicates that the type will be blocked by default', '1.0a116', null);

\echo email_domains
select "schema".add_column('email_domains', 'pkey', 0, 'pkey', false, true, false, 'a generated unique key', '1.0a100', null);
select "schema".add_column('email_domains', 'domain', 1, 'hostname', false, false, false, 'the domain that is hosted in the email', '1.0a100', '1.68');
select "schema".add_column('email_domains', 'domain', 2, 'domain_name', false, false, false, 'the domain that is hosted in the email', '1.69', null);
select "schema".add_column('email_domains', 'ao_server', 3, 'fkey', false, false, false, 'the pkey of the server that is hosting the email', '1.0a100', null);
select "schema".add_column('email_domains', 'package', 4, 'package', false, false, false, 'the owner of the domain', '1.0a100', '1.80');
select "schema".add_column('email_domains', 'package', 5, 'accounting', false, false, false, 'the owner of the domain', '1.80.0', null);

\echo email_forwarding
select "schema".add_column('email_forwarding', 'pkey', 0, 'pkey', false, true, false, 'a generated, unique key', '1.0a100', null);
select "schema".add_column('email_forwarding', 'email_address', 1, 'fkey', false, false, false, 'the primary key of the email_address', '1.0a100', null);
select "schema".add_column('email_forwarding', 'destination', 2, 'email', false, false, false, 'the destination of the email', '1.0a100', null);

\echo email_list_addresses
select "schema".add_column('email_list_addresses', 'pkey', 0, 'pkey', false, true, false, '', '1.0a100', null);
select "schema".add_column('email_list_addresses', 'email_address', 1, 'fkey', false, false, false, 'the primary key of the email_address', '1.0a100', null);
select "schema".add_column('email_list_addresses', 'email_list', 2, 'fkey', false, false, false, 'the pkey of the email list', '1.0a100', null);

\echo email_lists
select "schema".add_column('email_lists', 'pkey', 0, 'pkey', false, true, false, 'a generated, unique primary key', '1.0a100', null);
select "schema".add_column('email_lists', 'path', 1, 'path', false, false, false, 'the complete path to the email list', '1.0a100', null);
select "schema".add_column('email_lists', 'linux_account', 2, 'fkey', false, false, false, 'the linux_server_account that owns the list', '1.0a100', '1.30');
select "schema".add_column('email_lists', 'linux_server_account', 3, 'fkey', false, false, false, 'the linux_server_account that owns the list', '1.31', null);
select "schema".add_column('email_lists', 'linux_group', 4, 'fkey', false, false, false, 'the linux_server_group that the list belongs to please note that ownership and server are derived from this value', '1.0a100', '1.30');
select "schema".add_column('email_lists', 'linux_server_group', 5, 'fkey', false, false, false, 'the linux_server_group that the list belongs to please note that ownership and server are derived from this value', '1.31', null);
select "schema".add_column('email_lists', 'backup_level', 6, 'short', false, false, false, 'the backup level for this list', '1.0a100', '1.30');
select "schema".add_column('email_lists', 'backup_retention', 7, 'short', false, false, false, 'the number of days backups will be kept', '1.0a100', '1.30');
select "schema".add_column('email_lists', 'disable_log', 8, 'fkey', true, false, false, 'indicates that this list is disabled', '1.0a100', null);

\echo email_pipe_addresses
select "schema".add_column('email_pipe_addresses', 'pkey', 0, 'pkey', false, true, false, 'a generated, unique key', '1.0a100', null);
select "schema".add_column('email_pipe_addresses', 'email_address', 1, 'fkey', false, false, false, 'the primary key of the email_address', '1.0a100', null);
select "schema".add_column('email_pipe_addresses', 'email_pipe', 2, 'fkey', false, false, false, 'the primary key of the email pipe', '1.0a100', null);

\echo email_pipes
select "schema".add_column('email_pipes', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('email_pipes', 'ao_server', 1, 'fkey', false, false, false, 'the pkey of the server the program resides on', '1.0a100', null);
select "schema".add_column('email_pipes', 'path', 2, 'path', false, false, false, 'the complete path to the email handling program', '1.0a100', '1.80');
select "schema".add_column('email_pipes', 'command', 3, 'string', false, false, false, 'the complete command string to the email handling program', '1.80.0', null);
select "schema".add_column('email_pipes', 'package', 4, 'package', false, false, false, 'the package that this program runs for', '1.0a100', '1.80');
select "schema".add_column('email_pipes', 'package', 5, 'accounting', false, false, false, 'the package that this program runs for', '1.80.0', null);
select "schema".add_column('email_pipes', 'disable_log', 6, 'fkey', true, false, false, 'indicates that this email pipe is disabled', '1.0a100', null);

\echo email_smtp_relay_types
select "schema".add_column('email_smtp_relay_types', 'name', 0, 'string', false, true, true, 'the name of the type', '1.0a100', null);
select "schema".add_column('email_smtp_relay_types', 'sendmail_config', 1, 'string', false, false, true, 'the config value used for sendmail', '1.0a100', null);
select "schema".add_column('email_smtp_relay_types', 'qmail_config', 2, 'string', false, false, true, 'the config value used for qmail', '1.0a100', null);

\echo email_smtp_relays
select "schema".add_column('email_smtp_relays', 'pkey', 0, 'pkey', false, true, false, 'a generated unique key', '1.0a100', null);
select "schema".add_column('email_smtp_relays', 'package', 1, 'package', false, false, false, 'the package that owns this entry', '1.0a100', '1.80');
select "schema".add_column('email_smtp_relays', 'package', 2, 'accounting', false, false, false, 'the package that owns this entry', '1.80.0', null);
select "schema".add_column('email_smtp_relays', 'ao_server', 3, 'fkey', true, false, false, 'the pkey of the server that the rule applies to', '1.0a100', null);
select "schema".add_column('email_smtp_relays', 'host', 4, 'string', false, false, false, 'the hostname or IP the rule applies to', '1.0a100', '1.68');
select "schema".add_column('email_smtp_relays', 'host', 5, 'hostname', false, false, false, 'the hostname or IP the rule applies to', '1.69', null);
select "schema".add_column('email_smtp_relays', 'type', 6, 'string', false, false, false, 'the type of entry', '1.0a100', null);
select "schema".add_column('email_smtp_relays', 'created', 7, 'time', false, false, false, 'the time the entry was created', '1.0a100', null);
select "schema".add_column('email_smtp_relays', 'last_refreshed', 8, 'time', false, false, false, 'the time the entry was last updated', '1.0a100', null);
select "schema".add_column('email_smtp_relays', 'refresh_count', 9, 'int', false, false, false, 'the number of times the entry has been updated', '1.0a100', null);
select "schema".add_column('email_smtp_relays', 'expiration', 10, 'time', true, false, false, 'the expiration time of the entry, or null if non-expiring', '1.0a100', null);
select "schema".add_column('email_smtp_relays', 'disable_log', 11, 'fkey', true, false, false, 'indicates that the rule is disabled', '1.0a100', null);

\echo email_smtp_smart_hosts
select "schema".add_column('email_smtp_smart_hosts', 'net_bind', 0, 'fkey', false, true, false, 'a reference to the port that is being used as a Smart Host', '1.57', null);
select "schema".add_column('email_smtp_smart_hosts', 'total_out_burst', 1, 'int', true, false, false, 'the aggregate email burst limit for all emails sent through this host, null means unlimited', '1.57', null);
select "schema".add_column('email_smtp_smart_hosts', 'total_out_rate', 2, 'float', true, false, false, 'the sustained email rate for all emails sent through this host, null means unlimited', '1.57', null);
select "schema".add_column('email_smtp_smart_hosts', 'default_domain_out_burst', 3, 'int', true, false, false, 'the default per-domain email burst limit when no domain-specific value is provided in email_smtp_smart_host_domains, null means unlimited', '1.57', null);
select "schema".add_column('email_smtp_smart_hosts', 'default_domain_out_rate', 4, 'float', true, false, false, 'the default per-domain email rate when no domain-specific value is provided in email_smtp_smart_host_domains, null means unlimited', '1.57', null);

\echo email_smtp_smart_host_domains
select "schema".add_column('email_smtp_smart_host_domains', 'pkey', 0, 'pkey', false, true, false, 'a generated unique key', '1.57', null);
select "schema".add_column('email_smtp_smart_host_domains', 'smart_host', 1, 'fkey', false, false, false, 'the Smart Host that is being configured', '1.57', null);
select "schema".add_column('email_smtp_smart_host_domains', 'domain', 2, 'hostname', false, false, false, 'the specific domain that is being configured', '1.57', '1.68');
select "schema".add_column('email_smtp_smart_host_domains', 'domain', 3, 'domain_name', false, false, false, 'the specific domain that is being configured', '1.69', null);
select "schema".add_column('email_smtp_smart_host_domains', 'domain_out_burst', 4, 'int', true, false, false, 'the domain-specific email burst limit, null means unlimited', '1.57', null);
select "schema".add_column('email_smtp_smart_host_domains', 'domain_out_rate', 5, 'float', true, false, false, 'the domain-specific email rate, null means unlimited', '1.57', null);

\echo email_sa_integration_modes
select "schema".add_column('email_sa_integration_modes', 'name', 0, 'string', false, true, true, 'the unique name of the mode', '1.0a120', null);
select "schema".add_column('email_sa_integration_modes', 'display', 1, 'string', false, false, true, 'the display value for the mode', '1.0a120', null);
select "schema".add_column('email_sa_integration_modes', 'sort_order', 2, 'int', false, false, true, '', '1.0a120', null);

\echo encryption_keys
select "schema".add_column('encryption_keys', 'pkey', 0, 'pkey', false, true, false, 'a generated unique id', '1.23', null);
select "schema".add_column('encryption_keys', 'accounting', 1, 'accounting', false, false, false, 'the accounting code of the business that owns this key', '1.23', null);
select "schema".add_column('encryption_keys', 'id', 2, 'string', false, false, false, 'the id of the recipient who may decrypt the message', '1.23', null);
select "schema".add_column('encryption_keys', 'use_signup_requests', 3, 'boolean', false, false, false, 'if true, this key may be used for encrypting signup request data (including credit card details)', '1.23', '1.24');
select "schema".add_column('encryption_keys', 'signup_signer', 4, 'boolean', false, false, false, 'if true, this key may be used for signing signup request data (including credit card details)', '1.25', '1.43');
select "schema".add_column('encryption_keys', 'signup_recipient', 5, 'boolean', false, false, false, 'if true, this key may be used for encrypting signup request data (including credit card details)', '1.25', '1.43');
select "schema".add_column('encryption_keys', 'use_credit_cards', 6, 'boolean', false, false, false, 'if true, this key may be used for encrypting credit cards in the credit_cards table', '1.23', '1.24');
select "schema".add_column('encryption_keys', 'credit_card_signer', 7, 'boolean', false, false, false, 'if true, this key may be used for signing credit cards in the credit_cards table', '1.25', '1.30');
select "schema".add_column('encryption_keys', 'credit_card_recipient', 8, 'boolean', false, false, false, 'if true, this key may be used for encrypting credit cards in the credit_cards table', '1.25', '1.30');

\echo failover_file_log
select "schema".add_column('failover_file_log', 'pkey', 0, 'pkey', false, true, false, 'a generated, unique id', '1.0a100', null);
select "schema".add_column('failover_file_log', 'replication', 1, 'fkey', false, false, false, 'the replication that was performed', '1.0a100', null);
select "schema".add_column('failover_file_log', 'start_time', 2, 'time', false, false, false, 'the time the replication started', '1.0a100', null);
select "schema".add_column('failover_file_log', 'end_time', 3, 'time', false, false, false, 'the time the replication finished', '1.0a100', null);
select "schema".add_column('failover_file_log', 'scanned', 4, 'int', false, false, false, 'the number of files scanned', '1.0a100', null);
select "schema".add_column('failover_file_log', 'updated', 5, 'int', false, false, false, 'the number of files updated', '1.0a100', null);
select "schema".add_column('failover_file_log', 'bytes', 6, 'long', false, false, false, 'the number of bytes transferred', '1.0a100', null);
select "schema".add_column('failover_file_log', 'is_successful', 7, 'boolean', false, false, false, 'keeps track of which passes completed successfully', '1.0a100', null);

\echo failover_file_replications
select "schema".add_column('failover_file_replications', 'pkey', 0, 'pkey', false, true, false, 'a generated, unique id', '1.0a100', null);
select "schema".add_column('failover_file_replications', 'from_server', 1, 'fkey', false, false, false, 'the pkey of the server that the files are coming from', '1.0a100', '1.30');
select "schema".add_column('failover_file_replications', 'server', 2, 'fkey', false, false, false, 'the pkey of the server that the files are coming from', '1.31', null);
select "schema".add_column('failover_file_replications', 'to_server', 3, 'fkey', false, false, false, 'the pkey of the server that files are being sent to', '1.0a100', '1.30');
select "schema".add_column('failover_file_replications', 'backup_partition', 4, 'fkey', false, false, false, 'the pkey of the backup partition that the files are going to', '1.31', null);
select "schema".add_column('failover_file_replications', 'max_bit_rate', 5, 'int', true, false, false, 'the maximum bit rate for files being replicated', '1.0a105', '1.61');
select "schema".add_column('failover_file_replications', 'max_bit_rate', 6, 'long', true, false, false, 'the maximum bit rate for files being replicated', '1.61', null);
select "schema".add_column('failover_file_replications', 'last_start_time', 7, 'time', true, false, false, 'the last time the replication was started or null if never ran', '1.0a100', '1.30');
select "schema".add_column('failover_file_replications', 'use_compression', 8, 'boolean', false, false, false, 'when compression is enabled, chunk mode is used on mirroring, resulting in more CPU and disk, but less bandwidth', '1.9', null);
select "schema".add_column('failover_file_replications', 'retention', 9, 'short', false, false, false, 'the number of days backups will be kept', '1.13', null);
select "schema".add_column('failover_file_replications', 'connect_address', 10, 'string', true, false, false, 'an address that overrides regular AOServ connections for failovers', '1.14', '1.68');
select "schema".add_column('failover_file_replications', 'connect_address', 11, 'string', true, false, false, 'an address or hostname that overrides regular AOServ connections for failovers', '1.69', null);
select "schema".add_column('failover_file_replications', 'connect_from', 12, 'string', true, false, false, 'an address that overrides regular AOServ connection source addresses for failovers', '1.22', '1.68');
select "schema".add_column('failover_file_replications', 'connect_from', 13, 'ip_address', true, false, false, 'an address that overrides regular AOServ connection source addresses for failovers', '1.69', null);
select "schema".add_column('failover_file_replications', 'enabled', 14, 'boolean', false, false, false, 'the enabled flag for failovers', '1.15', null);
select "schema".add_column('failover_file_replications', 'to_path', 15, 'string', false, false, false, 'the destination path for the replication', '1.17','1.30');
select "schema".add_column('failover_file_replications', 'chunk_always', 16, 'boolean', false, false, false, 'when true chunking will always be performed (mtime+length will not be considered a sufficient match)', '1.17', '1.30');
select "schema".add_column('failover_file_replications', 'quota_gid', 17, 'int', true, false, false, 'the gid used on the backup_partition for quota reports, required if backup_partitions quotas are enabled, not allowed otherwise', '1.31', '1.68');
select "schema".add_column('failover_file_replications', 'quota_gid', 18, 'fkey', true, false, false, 'the gid used on the backup_partition for quota reports, required if backup_partitions quotas are enabled, not allowed otherwise', '1.69', '1.80');
select "schema".add_column('failover_file_replications', 'quota_gid', 19, 'linux_id', true, false, false, 'the gid used on the backup_partition for quota reports, required if backup_partitions quotas are enabled, not allowed otherwise', '1.80.0', null);

\echo failover_file_schedule
select "schema".add_column('failover_file_schedule', 'pkey', 0, 'pkey', false, true, false, 'a generated, unique id', '1.0a100', null);
select "schema".add_column('failover_file_schedule', 'replication', 1, 'fkey', false, false, false, 'the replication that will be started', '1.0a100', null);
select "schema".add_column('failover_file_schedule', 'hour', 2, 'short', false, false, false, 'the hour of day (in server timezone)', '1.0a100', null);
select "schema".add_column('failover_file_schedule', 'minute', 3, 'short', false, false, false, 'the minute (in server timezone)', '1.31', null);
select "schema".add_column('failover_file_schedule', 'enabled', 4, 'boolean', false, false, false, '', '1.0a100', null);

\echo failover_mysql_replications
select "schema".add_column('failover_mysql_replications', 'pkey', 0, 'pkey', false, true, false, 'a generated, unique id', '1.28', null);
select "schema".add_column('failover_mysql_replications', 'ao_server', 1, 'fkey', true, false, false, 'the ao_server the receives the replication', '1.59', null);
select "schema".add_column('failover_mysql_replications', 'replication', 2, 'fkey', false, false, false, 'the failover server that receives the replication', '1.28', '1.58');
select "schema".add_column('failover_mysql_replications', 'replication', 3, 'fkey', true, false, false, 'the failover server that receives the replication', '1.59', null);
select "schema".add_column('failover_mysql_replications', 'mysql_server', 4, 'fkey', false, false, false, 'the MySQL Server that is being replicated', '1.28', null);
select "schema".add_column('failover_mysql_replications', 'monitoring_seconds_behind_low', 5, 'int', true, false, false, 'the seconds behind where will trigger low alert level', '1.56', null);
select "schema".add_column('failover_mysql_replications', 'monitoring_seconds_behind_medium', 6, 'int', true, false, false, 'the seconds behind where will trigger medium alert level', '1.56', null);
select "schema".add_column('failover_mysql_replications', 'monitoring_seconds_behind_high', 7, 'int', true, false, false, 'the seconds behind where will trigger high alert level', '1.56', null);
select "schema".add_column('failover_mysql_replications', 'monitoring_seconds_behind_critical', 8, 'int', true, false, false, 'the seconds behind where will trigger critical alert level', '1.56', null);
select "schema".add_column('failover_mysql_replications', 'max_alert_level', 9, 'string', false, false, false, 'the maximum alert level for all monitoring of this slave', '1.74', null);

\echo file_backup_settings
select "schema".add_column('file_backup_settings', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('file_backup_settings', 'server', 1, 'fkey', false, false, false, 'the pkey of the server configured', '1.0a100', '1.30');
select "schema".add_column('file_backup_settings', 'replication', 2, 'fkey', false, false, false, 'the pkey of the failover_file_replication configured', '1.31', null);
select "schema".add_column('file_backup_settings', 'path', 3, 'string', false, false, false, 'the path to control', '1.0a100', null);
select "schema".add_column('file_backup_settings', 'package', 4, 'fkey', false, false, false, 'the pkey of the package the files belong to', '1.0a100', '1.30');
select "schema".add_column('file_backup_settings', 'backup_level', 5, 'short', false, false, false, 'the number of backup copies to keep', '1.0a100', '1.30');
select "schema".add_column('file_backup_settings', 'backup_enabled', 6, 'boolean', false, false, false, 'the enabled flag for this prefix', '1.31', null);
select "schema".add_column('file_backup_settings', 'backup_retention', 7, 'short', false, false, false, 'the number of days to keep the backup data', '1.0a100', '1.30');
select "schema".add_column('file_backup_settings', 'recurse', 8, 'boolean', false, false, false, 'indicates that the backup system should recursively scan directories in <code>path</code>', '1.0a100', '1.30');
select "schema".add_column('file_backup_settings', 'required', 9, 'boolean', false, false, false, 'indicates that backup pass will not be considered successful if file or path is missing', '1.62', null);

\echo firewalld_zones
select "schema".add_column('firewalld_zones', 'pkey', 0, 'pkey', false, true, false, 'a generated unique primary key', '1.81.0', null);
select "schema".add_column('firewalld_zones', 'server', 1, 'fkey', false, false, false, 'the pkey of the server', '1.81.0', null);
select "schema".add_column('firewalld_zones', 'name', 2, 'firewalld_zone_name', false, false, false, 'the name of the Firewalld zone', '1.81.0', null);
select "schema".add_column('firewalld_zones', 'short', 3, 'string', true, false, false, 'the optional short name', '1.81.0', null);
select "schema".add_column('firewalld_zones', 'description', 4, 'string', true, false, false, 'the optional description', '1.81.0', null);
select "schema".add_column('firewalld_zones', 'fail2ban', 5, 'boolean', false, false, false, 'enables Fail2ban on services in this zone', '1.81.9', null);

\echo ftp_guest_users
select "schema".add_column('ftp_guest_users', 'username', 0, 'username', false, true, false, 'the username that is a guest user', '1.0a100', null);

\echo httpd_binds
select "schema".add_column('httpd_binds', 'net_bind', 0, 'fkey', false, true, false, 'the IP address, port, and protocol details', '1.0a100', null);
select "schema".add_column('httpd_binds', 'httpd_server', 1, 'fkey', false, false, false, 'the server that is listening on the address', '1.0a100', null);

\echo httpd_jboss_sites
select "schema".add_column('httpd_jboss_sites', 'tomcat_site', 0, 'pkey', false, true, false, 'the tomcat site', '1.0a100', null);
select "schema".add_column('httpd_jboss_sites', 'version', 1, 'fkey', false, false, false, 'reference to httpd_jboss_versions', '1.0a100', null);
select "schema".add_column('httpd_jboss_sites', 'jnp_bind', 2, 'fkey', false, false, false, 'reference to net_binds', '1.0a100', null);
select "schema".add_column('httpd_jboss_sites', 'webserver_bind', 3, 'fkey', false, false, false, 'reference to net_binds', '1.0a100', null);
select "schema".add_column('httpd_jboss_sites', 'rmi_bind', 4, 'fkey', false, false, false, 'reference to net_binds', '1.0a100', null);
select "schema".add_column('httpd_jboss_sites', 'hypersonic_bind', 5, 'fkey', false, false, false, 'reference to net_binds', '1.0a100', null);
select "schema".add_column('httpd_jboss_sites', 'jmx_bind', 6, 'fkey', false, false, false, 'reference to net_binds', '1.0a100', null);

\echo httpd_jboss_versions
select "schema".add_column('httpd_jboss_versions', 'version', 0, 'pkey', false, true, true, 'jboss version designator', '1.0a100', null);
select "schema".add_column('httpd_jboss_versions', 'tomcat_version', 1, 'fkey', false, false, true, 'version of tomcat associated with this jboss version', '1.0a100', null);
select "schema".add_column('httpd_jboss_versions', 'template_dir', 2, 'string', false, false, true, 'directory containing the install template', '1.0a100', null);

\echo httpd_jk_codes
select "schema".add_column('httpd_jk_codes', 'code', 0, 'string', false, true, true, 'the unique, two-character code', '1.0a100', null);

\echo httpd_jk_protocols
select "schema".add_column('httpd_jk_protocols', 'protocol', 0, 'string', false, true, true, 'the protocol used, as found in protocols.protocol', '1.0a100', null);

\echo httpd_servers
select "schema".add_column('httpd_servers', 'pkey',                             0, 'pkey',     false,  true, false, 'a generated unique number', '1.0a100', null);
select "schema".add_column('httpd_servers', 'ao_server',                        1, 'fkey',     false, false, false, 'the pkey of the server that hosts the httpd', '1.0a100', null);
select "schema".add_column('httpd_servers', 'number',                           2, 'int',      false, false, false, 'the number of the instance on the server', '1.0a100', '1.81.7');
select "schema".add_column('httpd_servers', 'name',                             3, 'string',    true, false, false, 'the name of the instance on the server, null for the default instance', '1.81.8', null);
select "schema".add_column('httpd_servers', 'can_add_sites',                    4, 'boolean',  false, false, false, 'indicated that more sites may be added to the server', '1.0a100', null);
select "schema".add_column('httpd_servers', 'is_mod_jk',                        5, 'boolean',  false, false, false, 'does this server use mod_jk and support AJP1.3', '1.0a100', '1.81.9');
select "schema".add_column('httpd_servers', 'max_binds',                        6, 'int',      false, false, false, 'the maximum number of httpd_site_binds on this server', '1.0a100', '1.81.9');
select "schema".add_column('httpd_servers', 'linux_server_account',             7, 'fkey',     false, false, false, 'the account to run as', '1.0a102', null);
select "schema".add_column('httpd_servers', 'linux_server_group',               8, 'fkey',     false, false, false, 'the group to run as', '1.0a102', null);
select "schema".add_column('httpd_servers', 'mod_php_version',                  9, 'fkey',      true, false, false, 'the version of mod_php to run', '1.0a102', null);
select "schema".add_column('httpd_servers', 'use_suexec',                      10, 'boolean',  false, false, false, 'indicates that the suexec wrapper will be used for CGI', '1.0a102', null);
select "schema".add_column('httpd_servers', 'package',                         11, 'fkey',     false, false, false, 'the package that owns the server', '1.0a102', null);
select "schema".add_column('httpd_servers', 'price',                           12, 'decimal_2', true, false, false, 'the price monthly charged for the server instance', '1.0a102', '1.0a122');
select "schema".add_column('httpd_servers', 'is_shared',                       13, 'boolean',  false, false, false, 'indicates that any user on the server may use this httpd instance', '1.0a102', null);
select "schema".add_column('httpd_servers', 'use_mod_perl',                    14, 'boolean',  false, false, false, '', '1.0a103', null);
select "schema".add_column('httpd_servers', 'timeout',                         15, 'int',      false, false, false, 'the timeout setting in seconds', '1.0a130', null);
select "schema".add_column('httpd_servers', 'max_concurrency',                 16, 'int',      false, false, false, 'the maximum number of processes/threads for this server instance', '1.68', null);
select "schema".add_column('httpd_servers', 'monitoring_concurrency_low',      17, 'int',       true, false, false, 'the concurrency that will trigger a low-level alert',      '1.81.11', null);
select "schema".add_column('httpd_servers', 'monitoring_concurrency_medium',   18, 'int',       true, false, false, 'the concurrency that will trigger a medium-level alert',   '1.81.11', null);
select "schema".add_column('httpd_servers', 'monitoring_concurrency_high',     19, 'int',       true, false, false, 'the concurrency that will trigger a high-level alert',     '1.81.11', null);
select "schema".add_column('httpd_servers', 'monitoring_concurrency_critical', 20, 'int',       true, false, false, 'the concurrency that will trigger a critical-level alert', '1.81.11', null);
select "schema".add_column('httpd_servers', 'mod_access_compat',               21, 'boolean',   true, false, false, 'manually enables or disables the mod_access_compat Apache module for this server instance',   '1.81.7',  null);
select "schema".add_column('httpd_servers', 'mod_actions',                     22, 'boolean',   true, false, false, 'manually enables or disables the mod_actions Apache module for this server instance',         '1.81.7',  null);
select "schema".add_column('httpd_servers', 'mod_alias',                       23, 'boolean',   true, false, false, 'manually enables or disables the mod_alias Apache module for this server instance',           '1.81.7',  null);
select "schema".add_column('httpd_servers', 'mod_auth_basic',                  24, 'boolean',   true, false, false, 'manually enables or disables the mod_auth_basic Apache module for this server instance',      '1.81.7',  null);
select "schema".add_column('httpd_servers', 'mod_authn_core',                  25, 'boolean',   true, false, false, 'manually enables or disables the mod_authn_core Apache module for this server instance',      '1.81.7',  null);
select "schema".add_column('httpd_servers', 'mod_authn_file',                  26, 'boolean',   true, false, false, 'manually enables or disables the mod_authn_file Apache module for this server instance',      '1.81.7',  null);
select "schema".add_column('httpd_servers', 'mod_authz_core',                  27, 'boolean',   true, false, false, 'manually enables or disables the mod_authz_core Apache module for this server instance',      '1.81.7',  null);
select "schema".add_column('httpd_servers', 'mod_authz_groupfile',             28, 'boolean',   true, false, false, 'manually enables or disables the mod_authz_groupfile Apache module for this server instance', '1.81.7',  null);
select "schema".add_column('httpd_servers', 'mod_authz_host',                  29, 'boolean',   true, false, false, 'manually enables or disables the mod_authz_host Apache module for this server instance',      '1.81.7',  null);
select "schema".add_column('httpd_servers', 'mod_authz_user',                  30, 'boolean',   true, false, false, 'manually enables or disables the mod_authz_user Apache module for this server instance',      '1.81.7',  null);
select "schema".add_column('httpd_servers', 'mod_autoindex',                   31, 'boolean',   true, false, false, 'manually enables or disables the mod_autoindex Apache module for this server instance',       '1.81.7',  null);
select "schema".add_column('httpd_servers', 'mod_deflate',                     32, 'boolean',   true, false, false, 'manually enables or disables the mod_deflate Apache module for this server instance',         '1.81.7',  null);
select "schema".add_column('httpd_servers', 'mod_dir',                         33, 'boolean',   true, false, false, 'manually enables or disables the mod_dir Apache module for this server instance',             '1.81.7',  null);
select "schema".add_column('httpd_servers', 'mod_filter',                      34, 'boolean',   true, false, false, 'manually enables or disables the mod_filter Apache module for this server instance',          '1.81.7',  null);
select "schema".add_column('httpd_servers', 'mod_headers',                     35, 'boolean',   true, false, false, 'manually enables or disables the mod_headers Apache module for this server instance',         '1.81.7',  null);
select "schema".add_column('httpd_servers', 'mod_include',                     36, 'boolean',   true, false, false, 'manually enables or disables the mod_include Apache module for this server instance',         '1.81.7',  null);
select "schema".add_column('httpd_servers', 'mod_jk',                          37, 'boolean',   true, false, false, 'manually enables or disables the mod_jk Apache module for this server instance',              '1.81.7',  null);
select "schema".add_column('httpd_servers', 'mod_log_config',                  38, 'boolean',   true, false, false, 'manually enables or disables the mod_log_config Apache module for this server instance',      '1.81.7',  null);
select "schema".add_column('httpd_servers', 'mod_mime',                        39, 'boolean',   true, false, false, 'manually enables or disables the mod_mime Apache module for this server instance',            '1.81.7',  null);
select "schema".add_column('httpd_servers', 'mod_mime_magic',                  40, 'boolean',   true, false, false, 'manually enables or disables the mod_mime_magic Apache module for this server instance',      '1.81.7',  null);
select "schema".add_column('httpd_servers', 'mod_negotiation',                 41, 'boolean',   true, false, false, 'manually enables or disables the mod_negotiation Apache module for this server instance',     '1.81.7',  null);
select "schema".add_column('httpd_servers', 'mod_proxy',                       42, 'boolean',   true, false, false, 'manually enables or disables the mod_proxy Apache module for this server instance',           '1.81.7',  null);
select "schema".add_column('httpd_servers', 'mod_proxy_http',                  43, 'boolean',   true, false, false, 'manually enables or disables the mod_proxy_http Apache module for this server instance',      '1.81.7',  null);
select "schema".add_column('httpd_servers', 'mod_reqtimeout',                  44, 'boolean',   true, false, false, 'manually enables or disables the mod_reqtimeout Apache module for this server instance',      '1.81.7',  null);
select "schema".add_column('httpd_servers', 'mod_rewrite',                     45, 'boolean',   true, false, false, 'manually enables or disables the mod_rewrite Apache module for this server instance',         '1.81.7',  null);
select "schema".add_column('httpd_servers', 'mod_setenvif',                    46, 'boolean',   true, false, false, 'manually enables or disables the mod_setenvif Apache module for this server instance',        '1.81.7',  null);
select "schema".add_column('httpd_servers', 'mod_socache_shmcb',               47, 'boolean',   true, false, false, 'manually enables or disables the mod_socache_shmcb Apache module for this server instance',   '1.81.7',  null);
select "schema".add_column('httpd_servers', 'mod_ssl',                         48, 'boolean',   true, false, false, 'manually enables or disables the mod_ssl Apache module for this server instance',             '1.81.7',  null);
select "schema".add_column('httpd_servers', 'mod_status',                      49, 'boolean',   true, false, false, 'manually enables or disables the mod_status Apache module for this server instance',          '1.81.7',  null);
select "schema".add_column('httpd_servers', 'mod_wsgi',                        50, 'boolean',   true, false, false, 'manually enables or disables the mod_wsgi Apache module for this server instance',            '1.81.10', null);

\echo httpd_shared_tomcats
select "schema".add_column('httpd_shared_tomcats', 'pkey', 0, 'pkey', false, true, false, 'pkey for this jvm', '1.0a100', null);
select "schema".add_column('httpd_shared_tomcats', 'name', 1, 'string',false, false, false, 'unique name for this jvm', '1.0a100', null);
select "schema".add_column('httpd_shared_tomcats', 'ao_server', 2, 'fkey',false, false, false, 'the pkey of the server on which this jvm resides', '1.0a100', null);
select "schema".add_column('httpd_shared_tomcats', 'version', 3, 'fkey',false, false, false, 'the tomcat version', '1.0a100', null);
select "schema".add_column('httpd_shared_tomcats', 'linux_server_account', 4, 'fkey', false, false, false, 'the account under which this tomcat runs', '1.0a100', null);
select "schema".add_column('httpd_shared_tomcats', 'linux_server_group', 5, 'fkey', false, false, false, 'the group to which this tomcat is assigned', '1.0a100', null);
select "schema".add_column('httpd_shared_tomcats', 'is_secure', 6, 'boolean', false, false, false, 'is the jvm secure', '1.0a100', '1.81.9');
select "schema".add_column('httpd_shared_tomcats', 'is_overflow', 7, 'boolean', false, false, false, 'is an overflow JVM for several accounts', '1.0a100', '1.81.9');
select "schema".add_column('httpd_shared_tomcats', 'config_backup_level', 8, 'short', false, false, false, 'the number of copies of config backups to store', '1.0a100', '1.30');
select "schema".add_column('httpd_shared_tomcats', 'config_backup_retention', 9, 'short', false, false, false, 'the number of days backups are maintained', '1.0a100', '1.30');
select "schema".add_column('httpd_shared_tomcats', 'file_backup_level', 10, 'short', false, false, false, 'the number of copies of backups to store', '1.0a100', '1.30');
select "schema".add_column('httpd_shared_tomcats', 'file_backup_retention', 11, 'short', false, false, false, 'the number of days backups are maintained', '1.0a100', '1.30');
select "schema".add_column('httpd_shared_tomcats', 'log_backup_level', 12, 'short', false, false, false, 'the number of copies of log file backups to store', '1.0a100', '1.30');
select "schema".add_column('httpd_shared_tomcats', 'log_backup_retention', 13, 'short', false, false, false, 'the number of days backups are maintained', '1.0a100', '1.30');
select "schema".add_column('httpd_shared_tomcats', 'disable_log', 14, 'fkey', true, false, false, 'indicates that the JVM is disabled', '1.0a100', null);
select "schema".add_column('httpd_shared_tomcats', 'tomcat4_worker', 15, 'fkey', true, true, false, 'the httpd_worker for Tomcat version 4', '1.0a100', null);
select "schema".add_column('httpd_shared_tomcats', 'tomcat4_shutdown_port', 16, 'fkey', true, true, false, 'the port that will shut down this JVM', '1.0a100', null);
select "schema".add_column('httpd_shared_tomcats', 'tomcat4_shutdown_key', 17, 'string', true, false, false, 'the key used to shut down the JVM', '1.0a100', null);
select "schema".add_column('httpd_shared_tomcats', 'is_manual', 18, 'boolean', false, false, false, 'the configuration files are manually maintained', '1.0a100', null);
select "schema".add_column('httpd_shared_tomcats', 'max_post_size', 19, 'int', true, false, false, 'the maximum POST size allowed', '1.80.1', null);
select "schema".add_column('httpd_shared_tomcats', 'unpack_wars', 20, 'boolean', false, false, false, 'the unpackWARs setting for this Tomcat', '1.80.1', null);
select "schema".add_column('httpd_shared_tomcats', 'auto_deploy', 21, 'boolean', false, false, false, 'the autoDeploy setting for this Tomcat', '1.80.1', null);

\echo httpd_site_authenticated_locations
select "schema".add_column('httpd_site_authenticated_locations', 'pkey',                  0, 'pkey',    false,  true, false, 'a generated primary key',                                                                    '1.18',    null);
select "schema".add_column('httpd_site_authenticated_locations', 'httpd_site',            1, 'fkey',    false, false, false, 'the site that is being referenced',                                                          '1.18',    null);
select "schema".add_column('httpd_site_authenticated_locations', 'path',                  2, 'string',  false, false, false, 'the path to protect, unique per httpd_site',                                                 '1.18',    null);
select "schema".add_column('httpd_site_authenticated_locations', 'is_regular_expression', 3, 'boolean', false, false, false, 'regular expressions may be used, resulting in LocationMatch directives instead of Location', '1.18',    null);
select "schema".add_column('httpd_site_authenticated_locations', 'auth_name',             4, 'string',  false, false, false, 'the prompt given to the user during authentication',                                         '1.18',    null);
select "schema".add_column('httpd_site_authenticated_locations', 'auth_group_file',       5, 'path',    false, false, false, 'the full path to the file containing the group list',                                        '1.18',    null);
select "schema".add_column('httpd_site_authenticated_locations', 'auth_user_file',        6, 'path',    false, false, false, 'the full path to the file containing the user list',                                         '1.18',    null);
select "schema".add_column('httpd_site_authenticated_locations', 'require',               7, 'string',  false, false, false, 'the require directive parameter(s) for Apache',                                              '1.18',    null);
select "schema".add_column('httpd_site_authenticated_locations', 'handler',               8, 'string',   true, false, false, 'the optional handler for this location',                                                     '1.81.13', null);

\echo httpd_site_bind_headers
select "schema".add_column('httpd_site_bind_headers', 'pkey',             0, 'pkey',    false,  true, false, 'a generated primary key',                     '1.81.15', null);
select "schema".add_column('httpd_site_bind_headers', 'httpd_site_bind',  1, 'fkey',    false, false, false, 'the site bind that is being referenced',      '1.81.15', null);
select "schema".add_column('httpd_site_bind_headers', 'sort_order',       2, 'short',   false, false, false, 'the per-bind unique sort ordering',           '1.81.15', null);
select "schema".add_column('httpd_site_bind_headers', 'type',             3, 'string',  false, false, false, 'the type of header, either "Header" or "RequestHeader"', '1.81.15', null);
select "schema".add_column('httpd_site_bind_headers', 'always',           4, 'boolean', false, false, false, 'the condition is either "onsuccess" (default, can be omitted) or "always"', '1.81.15', null);
select "schema".add_column('httpd_site_bind_headers', 'action',           5, 'string',  false, false, false, 'the action to be performed',                  '1.81.15', null);
select "schema".add_column('httpd_site_bind_headers', 'header',           6, 'string',  false, false, false, 'the header name, without any final colon',    '1.81.15', null);
select "schema".add_column('httpd_site_bind_headers', 'value',            7, 'string',   true, false, false, 'the header value, not used for all actions',  '1.81.15', null);
select "schema".add_column('httpd_site_bind_headers', 'replacement',      8, 'string',   true, false, false, 'the replacement value, only used for "edit" and "edit*"', '1.81.15', null);
select "schema".add_column('httpd_site_bind_headers', 'when',             9, 'string',   true, false, false, 'optional control over when is this header directive is applied', '1.81.15', null);
select "schema".add_column('httpd_site_bind_headers', 'comment',         10, 'string',   true, false, false, 'an optional comment describing the redirect', '1.81.15', null);

\echo httpd_site_bind_redirects
select "schema".add_column('httpd_site_bind_redirects', 'pkey',            0, 'pkey',    false,  true, false, 'a generated primary key',                     '1.81.1', null);
select "schema".add_column('httpd_site_bind_redirects', 'httpd_site_bind', 1, 'fkey',    false, false, false, 'the site bind that is being referenced',      '1.81.1', null);
select "schema".add_column('httpd_site_bind_redirects', 'sort_order',      2, 'short',   false, false, false, 'the per-bind unique sort ordering',           '1.81.1', null);
select "schema".add_column('httpd_site_bind_redirects', 'pattern',         3, 'string',  false, false, false, 'the per-bind unique pattern matched',         '1.81.1', null);
select "schema".add_column('httpd_site_bind_redirects', 'substitution',    4, 'string',  false, false, false, 'the redirect substitution',                   '1.81.1', null);
select "schema".add_column('httpd_site_bind_redirects', 'comment',         5, 'string',   true, false, false, 'an optional comment describing the redirect', '1.81.1', null);
select "schema".add_column('httpd_site_bind_redirects', 'no_escape',       6, 'boolean', false, false, false, 'enables the [NE] RewriteRule Flag',           '1.81.4', null);

\echo httpd_site_binds
select "schema".add_column('httpd_site_binds', 'pkey',                          0, 'pkey',    false,  true, false, 'a generated primary key',                         '1.0a100', null);
select "schema".add_column('httpd_site_binds', 'httpd_site',                    1, 'fkey',    false, false, false, 'the site that is being referenced',               '1.0a100', null);
select "schema".add_column('httpd_site_binds', 'httpd_bind',                    2, 'fkey',    false, false, false, 'the IP and port information for the binding',     '1.0a100', null);
select "schema".add_column('httpd_site_binds', 'name',                          3, 'string',   true, false, false, 'the name of the bind, null for the default bind', '1.81.14', null);
select "schema".add_column('httpd_site_binds', 'access_log',                    4, 'path',    false, false, false, 'the file used for access logging',                '1.0a100', null);
select "schema".add_column('httpd_site_binds', 'error_log',                     5, 'path',    false, false, false, 'the file used for error logging',                 '1.0a100', null);
select "schema".add_column('httpd_site_binds', 'certificate',                   6, 'fkey',     true, false, false, 'the certificate used by this bind',               '1.81.10', null);
select "schema".add_column('httpd_site_binds', 'ssl_cert_file',                 7, 'path',     true, false, false, 'the file holding the public key (HTTPS only)',    '1.0a100', '1.81.9');
select "schema".add_column('httpd_site_binds', 'ssl_cert_key_file',             8, 'path',     true, false, false, 'the file holding the private key (HTTPS only)',   '1.0a100', '1.81.9');
select "schema".add_column('httpd_site_binds', 'ssl_cert_chain_file',           9, 'path',     true, false, false, 'the file holding the CA chain (HTTPS only)',      '1.81.4',  '1.81.9');
select "schema".add_column('httpd_site_binds', 'disable_log',                  10, 'fkey',     true, false, false, 'indicates that this bind is disabled',            '1.0a100', null);
select "schema".add_column('httpd_site_binds', 'predisable_config',            11, 'string',   true, false, false, 'the config file before the site was disabled',    '1.0a100', null);
select "schema".add_column('httpd_site_binds', 'is_manual',                    12, 'boolean', false, false, false, 'the config file is manually maintained',          '1.0a100', null);
select "schema".add_column('httpd_site_binds', 'redirect_to_primary_hostname', 13, 'boolean', false, false, false, 'tells that system to redirect any request that is not to either the IP address or the primary hostname to the primary hostname, while leaving the request path intact', '1.19', null);
select "schema".add_column('httpd_site_binds', 'include_site_config',          14, 'string',   true, false, false, 'controls whether this bind includes the per-site configuration file', '1.81.10', null);

\echo httpd_site_urls
select "schema".add_column('httpd_site_urls', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('httpd_site_urls', 'httpd_site_bind', 1, 'fkey', false, false, false, 'the site that is being referenced', '1.0a100', null);
select "schema".add_column('httpd_site_urls', 'hostname', 2, 'hostname', false, false, false, 'the hostname that this site responds to', '1.0a100', '1.68');
select "schema".add_column('httpd_site_urls', 'hostname', 3, 'domain_name', false, false, false, 'the hostname that this site responds to', '1.69', null);
select "schema".add_column(
    'httpd_site_urls',
    'is_primary',
    4,
    'boolean',
    false,
    false,
    false,
    'flags if this is the primary hostname for a site.
A site must have one and only one primary hostname
at a time.  This constraint is implemented by the
application code.',
    '1.0a100',
    null
);

\echo httpd_sites
select "schema".add_column('httpd_sites', 'pkey',                     0, 'pkey',       false, true,  false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('httpd_sites', 'ao_server',                1, 'fkey',       false, false, false, 'the pkey of the server the site is hosted on', '1.0a100', null);
select "schema".add_column('httpd_sites', 'site_name',                2, 'string',     false, false, false, 'the name of the site, as used in the /www directory.', '1.0a100', null);
select "schema".add_column('httpd_sites', 'list_first',               3, 'boolean',    false, false, false, 'if <code>true</code>, this site will be listed first in the Apache configs.  This is normally used only for the "not found" site for each httpd_server.', '1.0a100', null);
select "schema".add_column('httpd_sites', 'package',                  4, 'package',    false, false, false, 'the package that the site is part of', '1.0a100', '1.80');
select "schema".add_column('httpd_sites', 'package',                  5, 'accounting', false, false, false, 'the package that the site is part of', '1.80.0', null);
select "schema".add_column('httpd_sites', 'linux_account',            6, 'username',   false, false, false, 'the user the site "runs as"', '1.0a100', null);
select "schema".add_column('httpd_sites', 'linux_group',              7, 'string',     false, false, false, 'the primary group that can edit the site content', '1.0a100', '1.80');
select "schema".add_column('httpd_sites', 'linux_group',              8, 'group_id',   false, false, false, 'the primary group that can edit the site content', '1.80.0', null);
select "schema".add_column('httpd_sites', 'server_admin',             9, 'email',      false, false, false, 'the email address of the server administrator.  This address is provided when an error occurs.  The value is most often <code>webmaster@<i>domain.com</i></code>', '1.0a100', null);
select "schema".add_column('httpd_sites', 'content_src',             10, 'path',       true,  false, false, 'optional content added to site on creation', '1.0a100', '1.81.9');
select "schema".add_column('httpd_sites', 'config_backup_level',     11, 'short',      false, false, false, 'the number of copies of config backup files', '1.0a100', '1.30');
select "schema".add_column('httpd_sites', 'config_backup_retention', 12, 'short',      false, false, false, 'the number of days backups will be kept', '1.0a100', '1.30');
select "schema".add_column('httpd_sites', 'file_backup_level',       13, 'short',      false, false, false, 'the number of copies of backup files', '1.0a100', '1.30');
select "schema".add_column('httpd_sites', 'file_backup_retention',   14, 'short',      false, false, false, 'the number of days backups will be kept', '1.0a100', '1.30');
select "schema".add_column('httpd_sites', 'ftp_backup_level',        15, 'short',      false, false, false, 'the number of copies of FTP backup files', '1.0a100', '1.30');
select "schema".add_column('httpd_sites', 'ftp_backup_retention',    16, 'short',      false, false, false, 'the number of days backups will be kept', '1.0a100', '1.30');
select "schema".add_column('httpd_sites', 'log_backup_level',        17, 'short',      false, false, false, 'the number of copies of log backup files', '1.0a100', '1.30');
select "schema".add_column('httpd_sites', 'log_backup_retention',    18, 'short',      false, false, false, 'the number of days backups will be kept', '1.0a100', '1.30');
select "schema".add_column('httpd_sites', 'disable_log',             19, 'fkey',       true,  false, false, 'indicates that the site is disabled', '1.0a100', null);
select "schema".add_column('httpd_sites', 'is_manual',               20, 'boolean',    false, false, false, 'configuration of this server is performed manually', '1.0a100', null);
select "schema".add_column('httpd_sites', 'awstats_skip_files',      21, 'string',     true,  false, false, 'the SkipFiles setting for AWStats', '1.0a129', null);
select "schema".add_column('httpd_sites', 'php_version',             22, 'fkey',       true,  false, false, 'the active version of PHP, if any', '1.78', null);
select "schema".add_column('httpd_sites', 'enable_cgi',              23, 'boolean',    false, false, false, 'CGI is enabled on this website', '1.80', null);
select "schema".add_column('httpd_sites', 'enable_ssi',              24, 'boolean',    false, false, false, 'Server-side includes are enabled on this website', '1.80.1', null);
select "schema".add_column('httpd_sites', 'enable_htaccess',         25, 'boolean',    false, false, false, '.htaccess files are enabled on this website', '1.80.1', null);
select "schema".add_column('httpd_sites', 'enable_indexes',          26, 'boolean',    false, false, false, 'Directory indexes are enabled on this website', '1.80.1', null);
select "schema".add_column('httpd_sites', 'enable_follow_symlinks',  27, 'boolean',    false, false, false, 'Symbolic link following is enabled on this website (required for mod_rewrite)', '1.80.1', null);
select "schema".add_column('httpd_sites', 'enable_anonymous_ftp',    28, 'boolean',    false, false, false, 'Enables the anonymous FTP area for this site.', '1.80.1', null);
select "schema".add_column('httpd_sites', 'block_trace_track',       29, 'boolean',    false, false, false, 'Enables the blocking of TRACE and TRACK HTTP methods on this site.', '1.81.6', null);
select "schema".add_column('httpd_sites', 'block_scm',               30, 'boolean',    false, false, false, 'Enables the blocking of URL patterns associated with source control management systems.', '1.81.6', null);
select "schema".add_column('httpd_sites', 'block_core_dumps',        31, 'boolean',    false, false, false, 'Enables the blocking of core dumps.', '1.81.6', null);
select "schema".add_column('httpd_sites', 'block_editor_backups',    32, 'boolean',    false, false, false, 'Enables the blocking filename patterns associated with editor automatic backups.', '1.81.6', null);

\echo httpd_static_sites
select "schema".add_column('httpd_static_sites', 'httpd_site', 0, 'fkey', false, true, false, 'the site that contains static content', '1.0a100', null);

\echo httpd_tomcat_contexts
select "schema".add_column('httpd_tomcat_contexts', 'pkey', 0, 'pkey', false, true, false, 'a generated unique key', '1.0a100', null);
select "schema".add_column('httpd_tomcat_contexts', 'tomcat_site', 1, 'fkey', false, false, false, 'the site this context is part of', '1.0a100', null);
select "schema".add_column('httpd_tomcat_contexts', 'class_name', 2, 'string', true, false, false, 'the className attribute', '1.0a100', null);
select "schema".add_column('httpd_tomcat_contexts', 'cookies', 3, 'boolean', false, false, false, 'the cookies attribute', '1.0a100', null);
select "schema".add_column('httpd_tomcat_contexts', 'cross_context', 4, 'boolean', false, false, false, 'the crossContext attribute', '1.0a100', null);
select "schema".add_column('httpd_tomcat_contexts', 'doc_base', 5, 'string', false, false, false, 'the docBase attribute', '1.0a100', '1.80');
select "schema".add_column('httpd_tomcat_contexts', 'doc_base', 6, 'path', false, false, false, 'the docBase attribute', '1.80.0', null);
select "schema".add_column('httpd_tomcat_contexts', 'override', 7, 'boolean', false, false, false, 'the override attribute', '1.0a100', null);
select "schema".add_column('httpd_tomcat_contexts', 'path', 8, 'string', false, false, false, 'the path attribute', '1.0a100', null);
select "schema".add_column('httpd_tomcat_contexts', 'privileged', 9, 'boolean', false, false, false, 'the privileged attribute', '1.0a100', null);
select "schema".add_column('httpd_tomcat_contexts', 'reloadable', 10, 'boolean', false, false, false, 'the reloadable attribute', '1.0a100', null);
select "schema".add_column('httpd_tomcat_contexts', 'use_naming', 11, 'boolean', false, false, false, 'the useNaming attribute', '1.0a100', null);
select "schema".add_column('httpd_tomcat_contexts', 'wrapper_class', 12, 'string', true, false, false, 'the wrapperClass attribute', '1.0a100', null);
select "schema".add_column('httpd_tomcat_contexts', 'debug', 13, 'int', false, false, false, 'the debug attribute', '1.0a100', null);
select "schema".add_column('httpd_tomcat_contexts', 'work_dir', 14, 'path', true, false, false, 'the workDir attribute', '1.0a100', null);
select "schema".add_column('httpd_tomcat_contexts', 'server_xml_configured', 15, 'boolean', false, false, false, 'flag setting if the context is written into conf/server.xml', '1.81.3', null);

\echo httpd_tomcat_data_sources
select "schema".add_column('httpd_tomcat_data_sources', 'pkey', 0, 'pkey', false, true, false, 'a generated unique key', '1.5', null);
select "schema".add_column('httpd_tomcat_data_sources', 'tomcat_context', 1, 'fkey', false, false, false, 'the context this data source is for', '1.5', null);
select "schema".add_column('httpd_tomcat_data_sources', 'name', 2, 'string', false, false, false, 'the JNDI name', '1.5', null);
select "schema".add_column('httpd_tomcat_data_sources', 'driver_class_name', 3, 'string', false, false, false, 'fully qualified Java class name of the JDBC driver to be used', '1.5', null);
select "schema".add_column('httpd_tomcat_data_sources', 'url', 4, 'string', false, false, false, 'connection URL to be passed to our JDBC driver', '1.5', null);
select "schema".add_column('httpd_tomcat_data_sources', 'username', 5, 'string', false, false, false, 'database username to be passed to our JDBC driver', '1.5', null);
select "schema".add_column('httpd_tomcat_data_sources', 'password', 6, 'string', false, false, false, 'database password to be passed to our JDBC driver', '1.5', null);
select "schema".add_column('httpd_tomcat_data_sources', 'max_active', 7, 'int', false, false, false, 'the maximum number of active instances that can be allocated from this pool at the same time', '1.5', null);
select "schema".add_column('httpd_tomcat_data_sources', 'max_idle', 8, 'int', false, false, false, 'the maximum number of connections that can sit idle in this pool at the same time', '1.5', null);
select "schema".add_column('httpd_tomcat_data_sources', 'max_wait', 9, 'int', false, false, false, 'the maximum number of milliseconds that the pool will wait (when there are no available connections) for a connection to be returned before throwing an exception', '1.5', null);
select "schema".add_column('httpd_tomcat_data_sources', 'validation_query', 10, 'string', true, false, false, 'SQL query that can be used by the pool to validate connections before they are returned to the application.  If specified, this query MUST be an SQL SELECT statement that returns at least one row.', '1.5', null);

\echo httpd_tomcat_parameters
select "schema".add_column('httpd_tomcat_parameters', 'pkey', 0, 'pkey', false, true, false, 'a generated unique key', '1.5', null);
select "schema".add_column('httpd_tomcat_parameters', 'tomcat_context', 1, 'fkey', false, false, false, 'the context this parameter is for', '1.5', null);
select "schema".add_column('httpd_tomcat_parameters', 'name', 2, 'string', false, false, false, 'the name of the context initialization parameter to be created', '1.5', null);
select "schema".add_column('httpd_tomcat_parameters', 'value', 3, 'string', false, false, false, 'the parameter value that will be presented to the application when requested by calling ServletContext.getInitParameter()', '1.5', null);
select "schema".add_column('httpd_tomcat_parameters', 'override', 4, 'boolean', false, false, false, 'set this to false if you do not want a <context-param> for the same parameter name, found in the web application deployment descriptor, to override the value specified here. By default, overrides are allowed.', '1.5', null);
select "schema".add_column('httpd_tomcat_parameters', 'description', 5, 'string', true, false, false, 'optional, human-readable description of this context initialization parameter', '1.5', null);

\echo httpd_tomcat_site_jk_mounts
select "schema".add_column('httpd_tomcat_site_jk_mounts', 'pkey',              0, 'pkey',    false,  true, false, 'a generated primary key',               '1.81.6', null);
select "schema".add_column('httpd_tomcat_site_jk_mounts', 'httpd_tomcat_site', 1, 'fkey',    false, false, false, 'the Tomcat site that is being mounted', '1.81.6', null);
select "schema".add_column('httpd_tomcat_site_jk_mounts', 'path',              2, 'string',  false, false, false, 'the per-site unique pattern matched',   '1.81.6', null);
select "schema".add_column('httpd_tomcat_site_jk_mounts', 'mount',             3, 'boolean', false, false, false, 'true for JkMount, false for JkUnMount', '1.81.6', null);

\echo httpd_tomcat_sites
select "schema".add_column('httpd_tomcat_sites', 'httpd_site',   0, 'fkey',    false, true,  false, 'the site that this Tomcat is running in', '1.0a100', null);
select "schema".add_column('httpd_tomcat_sites', 'version',      1, 'fkey',    false, false, false, 'the version of tomcat that is being ran', '1.0a100', null);
select "schema".add_column('httpd_tomcat_sites', 'use_apache',   2, 'boolean', false, false, false, 'determines if Apache serves the static site content', '1.0a100', '1.81.5');
select "schema".add_column('httpd_tomcat_sites', 'block_webinf', 3, 'boolean', false, false, false, 'Blocks access to /META-INF and /WEB-INF at the Apache level.', '1.81.6', null);

\echo httpd_tomcat_shared_sites
select "schema".add_column('httpd_tomcat_shared_sites', 'tomcat_site', 0, 'pkey', false, true, false, 'the tomcat site', '1.0a100', null);
select "schema".add_column('httpd_tomcat_shared_sites', 'httpd_shared_tomcat', 1, 'fkey', false, false, false, 'the shared JVM', '1.0a100', null);

\echo httpd_tomcat_std_sites
select "schema".add_column('httpd_tomcat_std_sites', 'tomcat_site', 0, 'fkey', false, true, false, 'the site that this Tomcat is running in', '1.0a100', null);
select "schema".add_column('httpd_tomcat_std_sites', 'tomcat4_shutdown_port', 1, 'fkey', true, true, false, 'the port that will shut down this JVM', '1.0a100', null);
select "schema".add_column('httpd_tomcat_std_sites', 'tomcat4_shutdown_key', 2, 'string', true, false, false, 'the key used to shut down the JVM', '1.0a100', null);
select "schema".add_column('httpd_tomcat_std_sites', 'max_post_size', 3, 'int', true, false, false, 'the maximum POST size allowed', '1.80.1', null);
select "schema".add_column('httpd_tomcat_std_sites', 'unpack_wars', 4, 'boolean', false, false, false, 'the unpackWARs setting for this Tomcat', '1.80.1', null);
select "schema".add_column('httpd_tomcat_std_sites', 'auto_deploy', 5, 'boolean', false, false, false, 'the autoDeploy setting for this Tomcat', '1.80.1', null);

\echo httpd_tomcat_versions
select "schema".add_column('httpd_tomcat_versions', 'version', 0, 'fkey', false, true, true, 'a reference to the tomcat details in the <code>technology_versions</code> table', '1.0a100', null);
select "schema".add_column('httpd_tomcat_versions', 'install_dir', 1, 'path', false, false, true, 'the directory the basic install files are located in', '1.0a100', null);
select "schema".add_column('httpd_tomcat_versions', 'requires_mod_jk', 2, 'boolean', false, false, true, 'indicates that this version of Tomcat requires the use of mod_jk', '1.0a100', null);

\echo httpd_workers
select "schema".add_column('httpd_workers', 'pkey', 0, 'pkey', false, true, false, 'a generated, unique id', '1.0a100', null);
select "schema".add_column('httpd_workers', 'code', 1, 'string', false, false, false, 'the jk_code for the worker', '1.0a100', null);
select "schema".add_column('httpd_workers', 'net_bind', 2, 'fkey', false, true, false, 'the network binding reservation and details', '1.0a100', null);
select "schema".add_column('httpd_workers', 'tomcat_site', 3, 'fkey', true, false, false, 'the site that provides this workers (Tomcat 3 only)', '1.0a100', null);

\echo ip_reputation_limiter_limits
select "schema".add_column('ip_reputation_limiter_limits', 'pkey',                 0, 'pkey',   false, true,  false, 'a generated, unique key',       '1.66', null);
select "schema".add_column('ip_reputation_limiter_limits', 'limiter',              1, 'fkey',   false, false, false, 'the identifier of the limiter', '1.66', null);
select "schema".add_column('ip_reputation_limiter_limits', 'class',                2, 'string', false, false, false, 'the reputation class',          '1.66', null);
select "schema".add_column('ip_reputation_limiter_limits', 'syn_per_ip_burst',     3, 'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('ip_reputation_limiter_limits', 'syn_per_ip_rate',      4, 'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('ip_reputation_limiter_limits', 'syn_per_ip_unit',      5, 'string', false, false, false, '',                              '1.66', null);
select "schema".add_column('ip_reputation_limiter_limits', 'syn_per_ip_size',      6, 'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('ip_reputation_limiter_limits', 'syn_burst',            7, 'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('ip_reputation_limiter_limits', 'syn_rate',             8, 'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('ip_reputation_limiter_limits', 'syn_unit',             9, 'string', false, false, false, '',                              '1.66', null);
select "schema".add_column('ip_reputation_limiter_limits', 'packet_per_ip_burst', 10, 'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('ip_reputation_limiter_limits', 'packet_per_ip_rate',  11, 'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('ip_reputation_limiter_limits', 'packet_per_ip_unit',  12, 'string', false, false, false, '',                              '1.66', null);
select "schema".add_column('ip_reputation_limiter_limits', 'packet_per_ip_size',  13, 'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('ip_reputation_limiter_limits', 'packet_burst',        14, 'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('ip_reputation_limiter_limits', 'packet_rate',         15, 'short',  false, false, false, '',                              '1.66', null);
select "schema".add_column('ip_reputation_limiter_limits', 'packet_unit',         16, 'string', false, false, false, '',                              '1.66', null);

\echo ip_reputation_limiter_sets
select "schema".add_column('ip_reputation_limiter_sets', 'pkey',       0, 'pkey',  false, true,  false, 'a generated, unique key',       '1.66', null);
select "schema".add_column('ip_reputation_limiter_sets', 'limiter',    1, 'fkey',  false, false, false, 'the identifier of the limiter', '1.66', null);
select "schema".add_column('ip_reputation_limiter_sets', 'set',        2, 'fkey',  false, false, false, 'the identifier of the set',     '1.66', null);
select "schema".add_column('ip_reputation_limiter_sets', 'sort_order', 3, 'short', false, false, false, 'the per-limiter ordering',      '1.66', null);

\echo ip_reputation_limiters
select "schema".add_column('ip_reputation_limiters', 'pkey',                 0, 'pkey',        false, true,  false, 'a generated, unique key',                            '1.66', null);
select "schema".add_column('ip_reputation_limiters', 'net_device',           1, 'fkey',        false, false, false, 'the identifier of the net_device that is protected', '1.66', null);
select "schema".add_column('ip_reputation_limiters', 'identifier',           2, 'string',      false, false, false, 'the per-net_device unique identifier',               '1.66', null);
select "schema".add_column('ip_reputation_limiters', 'description',          3, 'string',      true,  false, false, 'an optional description of the limiter',             '1.66', null);

\echo ip_reputation_set_hosts
select "schema".add_column('ip_reputation_set_hosts', 'pkey',            0, 'long',       false, true,  false, 'a generated, unique key',                          '1.65', null);
select "schema".add_column('ip_reputation_set_hosts', 'set_fkey',        1, 'fkey',       false, false, false, 'the IP Reputation Set',                            '1.65', '1.65');
select "schema".add_column('ip_reputation_set_hosts', 'set',             2, 'fkey',       false, false, false, 'the IP Reputation Set',                            '1.66', null);
select "schema".add_column('ip_reputation_set_hosts', 'host',            3, 'int',        false, false, false, 'the per-set unique 32-bit IP address, big-endian', '1.65', '1.66');
select "schema".add_column('ip_reputation_set_hosts', 'host',            4, 'ip_address', false, false, false, 'the per-set unique IPv4 address',                  '1.67', null);
select "schema".add_column('ip_reputation_set_hosts', 'good_reputation', 5, 'short',      false, false, false, 'the current good reputation',                      '1.65', null);
select "schema".add_column('ip_reputation_set_hosts', 'bad_reputation',  6, 'short',      false, false, false, 'the current bad repuation',                        '1.65', null);

\echo ip_reputation_set_networks
select "schema".add_column('ip_reputation_set_networks', 'pkey',     0, 'long',       false, true,  false, 'a generated, unique key',                                                      '1.65', null);
select "schema".add_column('ip_reputation_set_networks', 'set_fkey', 1, 'fkey',       false, false, false, 'the IP Reputation Set',                                                        '1.65', '1.65');
select "schema".add_column('ip_reputation_set_networks', 'set',      2, 'fkey',       false, false, false, 'the IP Reputation Set',                                                        '1.66', null);
select "schema".add_column('ip_reputation_set_networks', 'network',  3, 'int',        false, false, false, 'the per-set unique 32-bit network address, big-endian with network bits zero', '1.65', '1.66');
select "schema".add_column('ip_reputation_set_networks', 'network',  4, 'ip_address', false, false, false, 'the per-set unique IPv4 network address, with network bits zero',              '1.67', null);
select "schema".add_column('ip_reputation_set_networks', 'counter',  5, 'int',        false, false, false, 'the reputation counter',                                                       '1.65', null);

\echo ip_reputation_sets
select "schema".add_column('ip_reputation_sets', 'pkey',                     0,  'pkey',        false, true,  false, 'a generated, unique key',                              '1.65', null);
select "schema".add_column('ip_reputation_sets', 'accounting',               1,  'accounting',  false, false, false, 'the accounting code of the business',                  '1.65', null);
select "schema".add_column('ip_reputation_sets', 'identifier',               2,  'string',      false, true,  false, 'a globally unique identifier',                         '1.65', null);
select "schema".add_column('ip_reputation_sets', 'allow_subaccount_use',     3,  'boolean',     false, false, false, 'allows subaccounts to use the set',                    '1.65', null);
select "schema".add_column('ip_reputation_sets', 'max_hosts',                4,  'int',         false, false, false, 'the maximum number of individual hosts tracked',       '1.65', null);
select "schema".add_column('ip_reputation_sets', 'max_uncertain_reputation', 5,  'short',       false, false, false, 'the maximum reputation from uncertain sources',        '1.65', null);
select "schema".add_column('ip_reputation_sets', 'max_definite_reputation',  6,  'short',       false, false, false, 'the maximum reputation from definite sources',         '1.65', null);
select "schema".add_column('ip_reputation_sets', 'network_prefix',           7,  'short',       false, false, false, 'the network size, for example 24 for a /24 (class C)', '1.65', null);
select "schema".add_column('ip_reputation_sets', 'max_network_reputation',   8,  'short',       false, false, false, 'the maximum reputation for a network',                 '1.65', null);
select "schema".add_column('ip_reputation_sets', 'host_decay_interval',      9,  'int',         false, false, false, 'the number of seconds between each host decay',        '1.65', null);
select "schema".add_column('ip_reputation_sets', 'last_host_decay',          10, 'time',        false, false, false, 'the time the hosts were last decayed',                 '1.65', null);
select "schema".add_column('ip_reputation_sets', 'network_decay_interval',   11, 'int',         false, false, false, 'the number of seconds between each network decay',     '1.65', null);
select "schema".add_column('ip_reputation_sets', 'last_network_decay',       12, 'time',        false, false, false, 'the time the networks were last decayed',              '1.65', null);
select "schema".add_column('ip_reputation_sets', 'last_reputation_added',    13, 'time',        false, false, false, 'the time reputation was last added',                   '1.67', null);

\echo languages
select "schema".add_column('languages', 'code', 0, 'string', false, true, true, 'the language code', '1.44', null);

\echo linux_acc_addresses
select "schema".add_column('linux_acc_addresses', 'pkey', 0, 'pkey', false, true, false, 'a unique, generated primary key', '1.0a100', null);
select "schema".add_column('linux_acc_addresses', 'email_address', 1, 'fkey', false, false, false, 'reference to pkey of email_addresses', '1.0a100', null);
select "schema".add_column('linux_acc_addresses', 'linux_account', 2, 'username', false, false, false, 'reference to username of linux_accounts', '1.0a100', '1.30');
select "schema".add_column('linux_acc_addresses', 'linux_server_account', 3, 'fkey', false, false, false, 'reference to linux_server_accounts', '1.31', null);

\echo linux_account_types
select "schema".add_column('linux_account_types', 'name', 0, 'string', false, true, true, 'the name of the type', '1.0a100', null);
select "schema".add_column('linux_account_types', 'description', 1, 'string', false, false, true, 'a description of the type', '1.0a100', null);
select "schema".add_column('linux_account_types', 'is_email', 2, 'boolean', false, false, true, 'can email be associated with this account', '1.0a100', null);

\echo linux_accounts
select "schema".add_column('linux_accounts', 'username', 0, 'username', false, true, false, 'the unique username', '1.0a100', null);
select "schema".add_column('linux_accounts', 'name', 1, 'string', false, false, false, 'the full name of the user', '1.0a100', '1.68');
select "schema".add_column('linux_accounts', 'name', 2, 'gecos', false, false, false, 'the full name of the user', '1.69', '1.80.0');
select "schema".add_column('linux_accounts', 'name', 3, 'gecos', true, false, false, 'the full name of the user', '1.80.1', null);
select "schema".add_column('linux_accounts', 'office_location', 4, 'string', true, false, false, 'the location of the user', '1.0a100', '1.68');
select "schema".add_column('linux_accounts', 'office_location', 5, 'gecos', true, false, false, 'the location of the user', '1.69', null);
select "schema".add_column('linux_accounts', 'office_phone', 6, 'phone', true, false, false, 'the work phone number of the user', '1.0a100', '1.68');
select "schema".add_column('linux_accounts', 'office_phone', 7, 'gecos', true, false, false, 'the work phone number of the user', '1.69', null);
select "schema".add_column('linux_accounts', 'home_phone', 8, 'phone', true, false, false, 'the home phone number of the user', '1.0a100', '1.68');
select "schema".add_column('linux_accounts', 'home_phone', 9, 'gecos', true, false, false, 'the home phone number of the user', '1.69', null);
select "schema".add_column('linux_accounts', 'type', 10, 'string', false, false, false, 'the type of account', '1.0a100', null);
select "schema".add_column('linux_accounts', 'shell', 11, 'path', false, false, false, 'the users shell preference', '1.0a100', null);
select "schema".add_column('linux_accounts', 'created', 12, 'time', false, false, false, 'the time the account was created', '1.0a100', null);
select "schema".add_column('linux_accounts', 'disable_log', 13, 'fkey', true, false, false, 'indicates that this account is disabled', '1.0a100', null);

\echo linux_group_accounts
select "schema".add_column('linux_group_accounts', 'pkey', 0, 'pkey', false, true, false, 'a generated unique number', '1.0a100', null);
select "schema".add_column('linux_group_accounts', 'group_name', 1, 'string', false, false, false, 'the linux group name', '1.0a100', '1.80');
select "schema".add_column('linux_group_accounts', 'group_name', 2, 'group_id', false, false, false, 'the linux group name', '1.80.0', null);
select "schema".add_column('linux_group_accounts', 'username', 3, 'username', false, false, false, 'the linux account that is an alternate member', '1.0a100', null);
select "schema".add_column('linux_group_accounts', 'is_primary', 4, 'boolean', false, false, false, 'flag showing that this group is the user''s primary group', '1.0a100', null);
select "schema".add_column('linux_group_accounts', 'operating_system_version', 5, 'fkey', true, false, false, 'the version of operating system where this group and user are associated, or null for all operating system versions', '1.80.1', null);

\echo linux_group_types
select "schema".add_column('linux_group_types', 'name', 0, 'string', false, true, true, 'the name of the type', '1.0a100', null);
select "schema".add_column('linux_group_types', 'description', 1, 'string', false, false, true, 'a description of the type', '1.0a100', null);

\echo linux_groups
select "schema".add_column('linux_groups', 'name', 0, 'string', false, true, false, 'the name of the group', '1.0a100', '1.80');
select "schema".add_column('linux_groups', 'name', 1, 'group_id', false, true, false, 'the name of the group', '1.80.0', null);
select "schema".add_column('linux_groups', 'package', 2, 'package', false, false, false, 'the package of the group', '1.0a100', '1.80');
select "schema".add_column('linux_groups', 'package', 3, 'accounting', false, false, false, 'the package of the group', '1.80.0', null);
select "schema".add_column('linux_groups', 'type', 4, 'string', false, false, false, 'the type of group', '1.0a100', null);

\echo linux_server_accounts
select "schema".add_column('linux_server_accounts', 'pkey', 0, 'pkey', false, true, false, 'the generated primary key', '1.0a100', null);
select "schema".add_column('linux_server_accounts', 'username', 1, 'username', false, false, false, 'the name of the user', '1.0a100', null);
select "schema".add_column('linux_server_accounts', 'ao_server', 2, 'fkey', false, false, false, 'the pkey of the server the username is on', '1.0a100', null);
select "schema".add_column('linux_server_accounts', 'uid', 3, 'int', false, false, false, 'the uid of the user on the machine', '1.0a100', '1.68');
select "schema".add_column('linux_server_accounts', 'uid', 4, 'fkey', false, false, false, 'the uid of the user on the machine', '1.69', '1.80');
select "schema".add_column('linux_server_accounts', 'uid', 5, 'linux_id', false, false, false, 'the uid of the user on the machine', '1.80.0', null);
select "schema".add_column('linux_server_accounts', 'home', 6, 'path', false, false, false, 'the home directory of the user on this machine', '1.0a100', null);
select "schema".add_column('linux_server_accounts', 'cron_backup_level', 7, 'short', false, false, false, 'the level of backup for cron table', '1.0a100', '1.30');
select "schema".add_column('linux_server_accounts', 'cron_backup_retention', 8, 'short', false, false, false, 'the number of days backup files will be kept', '1.0a100', '1.30');
select "schema".add_column('linux_server_accounts', 'home_backup_level', 9, 'short', false, false, false, 'the level of backup for home directory', '1.0a100', '1.30');
select "schema".add_column('linux_server_accounts', 'home_backup_retention', 10, 'short', false, false, false, 'the number of days backup files will be kept', '1.0a100', '1.30');
select "schema".add_column('linux_server_accounts', 'inbox_backup_level', 11, 'short', false, false, false, 'the level of backup for email inbox', '1.0a100', '1.30');
select "schema".add_column('linux_server_accounts', 'inbox_backup_retention', 12, 'short', false, false, false, 'the number of days backup files will be kept', '1.0a100', '1.30');
select "schema".add_column('linux_server_accounts', 'autoresponder_from', 13, 'fkey', true, false, false, 'the pkey of the email address used for the autoresponder', '1.0a100', null);
select "schema".add_column('linux_server_accounts', 'autoresponder_subject', 14, 'string', true, false, false, 'the subject of autoresponder messages', '1.0a100', null);
select "schema".add_column('linux_server_accounts', 'autoresponder_path', 15, 'string', true, false, false, 'the full path of the autoresponder text file', '1.0a100', null);
select "schema".add_column('linux_server_accounts', 'is_autoresponder_enabled', 16, 'boolean', false, false, false, 'flags if the autoresponder is enabled', '1.0a100', null);
select "schema".add_column('linux_server_accounts', 'disable_log', 17, 'fkey', true, false, false, 'indicates the account is disabled', '1.0a100', null);
select "schema".add_column('linux_server_accounts', 'predisable_password', 18, 'string', true, false, false, 'stores the password that was used before the account was disabled', '1.0a100', null);
select "schema".add_column('linux_server_accounts', 'created', 19, 'date', false, false, false, 'the time this account was added', '1.0a100', '1.68');
select "schema".add_column('linux_server_accounts', 'created', 20, 'time', false, false, false, 'the time this account was added', '1.69', null);
select "schema".add_column('linux_server_accounts', 'use_inbox', 21, 'boolean', false, false, false, 'email for this account will be stored in the inbox, otherwise it is just deleted', '1.0a100', null);
select "schema".add_column('linux_server_accounts', 'trash_email_retention', 22, 'int', true, false, false, 'the number of days before messages in the Trash folder are automatically removed.', '1.0a100', null);
select "schema".add_column('linux_server_accounts', 'junk_email_retention', 23, 'int', true, false, false, 'the number of days before messages in the Junk folder are automatically removed.', '1.0a120', null);
select "schema".add_column('linux_server_accounts', 'sa_integration_mode', 24, 'string', false, false, false, 'the integration mode for SpamAssassin', '1.0a120', null);
select "schema".add_column('linux_server_accounts', 'sa_required_score', 25, 'float', false, false, false, 'the minimum SpamAssassin score considered Junk', '1.0a124', null);
select "schema".add_column('linux_server_accounts', 'sa_discard_score', 26, 'int', true, false, false, 'the minimum SpamAssassin score that will be discarded instead of tagged or placed in the Junk folder', '1.40', null);
select "schema".add_column('linux_server_accounts', 'sudo', 27, 'string', true, false, false, 'the sudo setting or null when sudo not allowed', '1.80.1', null);

\echo linux_server_groups
select "schema".add_column('linux_server_groups', 'pkey', 0, 'pkey', false, true, false, 'a unique key', '1.0a100', null);
select "schema".add_column('linux_server_groups', 'name', 1, 'string', false, false, false, 'the group name', '1.0a100', '1.80');
select "schema".add_column('linux_server_groups', 'name', 2, 'group_id', false, false, false, 'the group name', '1.80.0', null);
select "schema".add_column('linux_server_groups', 'ao_server', 3, 'fkey', false, false, false, 'the pkey of the ao_server the group is on', '1.0a100', null);
select "schema".add_column('linux_server_groups', 'gid', 4, 'int', false, false, false, 'the gid on that machine', '1.0a100', '1.68');
select "schema".add_column('linux_server_groups', 'gid', 5, 'fkey', false, false, false, 'the gid on that machine', '1.69', '1.80');
select "schema".add_column('linux_server_groups', 'gid', 6, 'linux_id', false, false, false, 'the gid on that machine', '1.80.0', null);
select "schema".add_column('linux_server_groups', 'created', 7, 'date', false, false, false, 'the time the group was added', '1.0a100', '1.68');
select "schema".add_column('linux_server_groups', 'created', 8, 'time', false, false, false, 'the time the group was added', '1.69', null);

\echo majordomo_lists
select "schema".add_column('majordomo_lists', 'email_list', 0, 'fkey', false, true, false, 'the email list that this majordomo_list represents', '1.0a100', null);
select "schema".add_column('majordomo_lists', 'majordomo_server', 1, 'fkey', false, false, false, 'the majordomo_server that this list is part of', '1.0a100', null);
select "schema".add_column('majordomo_lists', 'name', 2, 'string', false, false, false, 'the list name', '1.0a100', null);
select "schema".add_column('majordomo_lists', 'listname_pipe_add', 3, 'fkey', false, true, false, 'the pipe address the list responds to.  Example: test@aoindustries.com', '1.0a100', null);
select "schema".add_column('majordomo_lists', 'listname_list_add', 4, 'fkey', false, true, false, 'the list address that accesses the raw list contents.  Example: test-list@aoindustries.com', '1.0a100', null);
select "schema".add_column('majordomo_lists', 'owner_listname_add', 5, 'fkey', false, true, false, 'the owner of the list.  Example: owner-test@aoindustries.com', '1.0a100', null);
select "schema".add_column('majordomo_lists', 'listname_owner_add', 6, 'fkey', false, true, false, 'the owner of the list.  Example: test-owner@aoindustries.com', '1.0a100', null);
select "schema".add_column('majordomo_lists', 'listname_approval_add', 7, 'fkey', false, true, false, 'the person who retrieves approval notifications.  Example: test-approval@aoindustries.com', '1.0a100', null);
select "schema".add_column('majordomo_lists', 'listname_request_pipe_add', 8, 'fkey', false, true, false, 'the address that Majordomo requests may be sent to.  Example: test-request@aoindustries.com', '1.0a100', null);

\echo majordomo_servers
select "schema".add_column('majordomo_servers', 'domain', 0, 'fkey', false, true, false, 'the pkey of the domain that is hosted', '1.0a100', null);
select "schema".add_column('majordomo_servers', 'linux_server_account', 1, 'fkey', false, false, false, 'the pkey of linux_server_account to run as', '1.0a100', null);
select "schema".add_column('majordomo_servers', 'linux_server_group', 2, 'fkey', false, false, false, 'the pkey of the linux_server_group to run as', '1.0a100', null);
select "schema".add_column('majordomo_servers', 'version', 3, 'string', false, false, false, 'the version of Majordomo to use', '1.0a100', null);
select "schema".add_column('majordomo_servers', 'majordomo_pipe_address', 4, 'fkey', false, false, false, 'the email_address to use as the majordomo', '1.0a100', null);
select "schema".add_column('majordomo_servers', 'owner_majordomo_add', 5, 'fkey', false, false, false, 'the email_address that owns this majordomo list', '1.0a100', null);
select "schema".add_column('majordomo_servers', 'majordomo_owner_add', 6, 'fkey', false, false, false, 'the email_address that owns this majordomo list', '1.0a100', null);
select "schema".add_column('majordomo_servers', 'backup_level', 7, 'short', false, false, false, 'the number of backup copies to store', '1.0a100', '1.30');
select "schema".add_column('majordomo_servers', 'backup_retention', 8, 'short', false, false, false, 'the number of days backups will be kept', '1.0a100', '1.30');

\echo majordomo_versions
select "schema".add_column('majordomo_versions', 'version', 0, 'string', false, true, true, 'the version number', '1.0a100', null);
select "schema".add_column('majordomo_versions', 'created', 1, 'time', false, false, true, 'the time the version was added', '1.0a100', null);

\echo master_hosts
select "schema".add_column('master_hosts', 'pkey', 0, 'pkey', false, true, false, 'a generated unique primary key', '1.0a100', null);
select "schema".add_column('master_hosts', 'username', 1, 'username', false, false, false, 'the unique username of the user', '1.0a100', null);
select "schema".add_column('master_hosts', 'host', 2, 'ip_address', false, false, false, 'the hostname or IP address they are allowed to connect from', '1.0a100', '1.80');
select "schema".add_column('master_hosts', 'host', 3, 'hostname', false, false, false, 'the hostname or IP address they are allowed to connect from', '1.80.0', null);

\echo master_processes
select "schema".add_column('master_processes', 'process_id', 0, 'long', false, true, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'connector_id', 1, 'long', true, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'authenticated_user', 2, 'username', true, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'effective_user', 3, 'username', true, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'daemon_server', 4, 'fkey', true, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'host', 5, 'ip_address', false, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'protocol', 6, 'string', false, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'aoserv_protocol', 7, 'string', true, false, false, '', '1.0a101', null);
select "schema".add_column('master_processes', 'is_secure', 8, 'boolean', false, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'connect_time', 9, 'time', false, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'use_count', 10, 'long', false, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'total_time', 11, 'interval', false, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'priority', 12, 'int', false, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'state', 13, 'string', false, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'command', 14, 'string', true, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'state_start_time', 15, 'time', false, false, false, '', '1.0a100', null);

\echo master_server_stats
select "schema".add_column('master_server_stats', 'name', 0, 'string', false, true, false, '', '1.0a100', null);
select "schema".add_column('master_server_stats', 'value', 1, 'string', true, false, false, '', '1.0a100', null);
select "schema".add_column('master_server_stats', 'description', 2, 'string', false, false, false, '', '1.0a100', null);

\echo master_servers
select "schema".add_column('master_servers', 'pkey', 0, 'pkey', false, true, false, 'a generated unique primary key', '1.0a100', null);
select "schema".add_column('master_servers', 'username', 1, 'username', false, false, false, 'the unique username of the user', '1.0a100', null);
select "schema".add_column('master_servers', 'server', 2, 'fkey', false, false, false, 'the pkey of the server they may control', '1.0a100', null);

\echo master_users
select "schema".add_column('master_users', 'username',                   0, 'username', false, true, false, 'the unique username of the user', '1.0a100', null);
select "schema".add_column('master_users', 'is_active',                  1, 'boolean', false, false, false, 'this level of access may be disabled', '1.0a100', null);
select "schema".add_column('master_users', 'can_access_accounting',      2, 'boolean', false, false, false, 'if they can access accounting resources', '1.0a100', null);
select "schema".add_column('master_users', 'can_access_bank_accounting', 3, 'boolean', false, false, false, 'if they can access bank account info', '1.0a100', null);
select "schema".add_column('master_users', 'can_invalidate_tables',      4, 'boolean', false, false, false, 'if they can invalidate master tables', '1.0a100', null);
select "schema".add_column('master_users', 'can_access_admin_web',       5, 'boolean', false, false, false, 'if they can access administrative web pages', '1.0a100', null);
select "schema".add_column('master_users', 'is_ticket_admin',            6, 'boolean', false, false, false, 'if they can access ticket admin stuff', '1.0a100', '1.43');
select "schema".add_column('master_users', 'is_dns_admin',               7, 'boolean', false, false, false, 'if they can access all DNS stuff', '1.0a100', null);
select "schema".add_column('master_users', 'can_switch_users',           8, 'boolean', false, false, false, '', '1.0a100', '1.0a117');
select "schema".add_column('master_users', 'is_router',                  9, 'boolean', false, false, false, 'if they read all router stuff', '1.65', null);
select "schema".add_column('master_users', 'is_cluster_admin',          10, 'boolean', false, false, false, 'if they can control cluster resources', '1.73', null);

\echo monthly_charges
select "schema".add_column('monthly_charges', 'pkey',        0, 'pkey',        true,  true, false, 'a unique, generated number for reference',          '1.0a100', null);
select "schema".add_column('monthly_charges', 'accounting',  1, 'accounting', false, false, false, 'the account code that is charged to',               '1.0a100', null);
select "schema".add_column('monthly_charges', 'package',     2, 'package',    false, false, false, 'the package that this is charged for',              '1.0a100', '1.80');
select "schema".add_column('monthly_charges', 'package',     3, 'accounting', false, false, false, 'the package that this is charged for',              '1.80.0', null);
select "schema".add_column('monthly_charges', 'type',        4, 'string',     false, false, false, 'the type of charge, as found in transaction types', '1.0a100', null);
select "schema".add_column('monthly_charges', 'description', 5, 'string',      true, false, false, 'the description that is placed in the transaction', '1.0a100', null);
select "schema".add_column('monthly_charges', 'quantity',    6, 'decimal_3',  false, false, false, 'the quantity',                                      '1.0a100', null);
select "schema".add_column('monthly_charges', 'rate',        7, 'decimal_2',  false, false, false, 'the rate',                                          '1.0a100', null);
select "schema".add_column('monthly_charges', 'created',     8, 'time',       false, false, false, 'the time this entry was created',                   '1.0a100', null);
select "schema".add_column('monthly_charges', 'created_by',  9, 'username',   false, false, false, 'the business_administrator who created the entry',  '1.0a100', null);
select "schema".add_column('monthly_charges', 'active',     10, 'boolean',    false, false, false, 'flags if this entry is active',                     '1.0a100', null);

\echo mysql_databases
select "schema".add_column('mysql_databases', 'pkey', 0, 'pkey', false, true, false, 'a unique, generated primary key', '1.0a100', null);
select "schema".add_column('mysql_databases', 'name', 1, 'string', false, false, false, 'the name of the database', '1.0a100', '1.80');
select "schema".add_column('mysql_databases', 'name', 2, 'mysql_database_name', false, false, false, 'the name of the database', '1.80.0', null);
select "schema".add_column('mysql_databases', 'ao_server', 3, 'fkey', false, false, false, 'the pkey of the server that this database is hosted on', '1.0a100', '1.3');
select "schema".add_column('mysql_databases', 'mysql_server', 4, 'fkey', false, false, false, 'the pkey of the server that this database is hosted on', '1.4', null);
select "schema".add_column('mysql_databases', 'package', 5, 'package', false, false, false, 'the package that this database is part of', '1.0a100', '1.80');
select "schema".add_column('mysql_databases', 'package', 6, 'accounting', false, false, false, 'the package that this database is part of', '1.80.0', null);
select "schema".add_column('mysql_databases', 'backup_level', 7, 'short', false, false, false, 'the number of backup copies to keep', '1.0a100', '1.30');
select "schema".add_column('mysql_databases', 'backup_retention', 8, 'short', false, false, false, 'the number of days backups will be kept', '1.0a100', '1.30');
select "schema".add_column('mysql_databases', 'max_check_table_alert_level', 9, 'string', false, false, false, 'the maximum alert level created for the check table monitoring of this database', '1.74', null);

\echo mysql_db_users
select "schema".add_column('mysql_db_users', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('mysql_db_users', 'mysql_database', 1, 'fkey', false, false, false, 'the pkey in mysql_databases', '1.0a100', null);
select "schema".add_column('mysql_db_users', 'mysql_user', 2, 'fkey', false, false, false, 'the pkey in mysql_server_users', '1.0a100', '1.30');
select "schema".add_column('mysql_db_users', 'mysql_server_user', 3, 'fkey', false, false, false, 'the pkey in mysql_server_users', '1.31', null);
select "schema".add_column('mysql_db_users', 'select_priv', 4, 'boolean', false, false, false, 'the SELECT privilege', '1.0a100', null);
select "schema".add_column('mysql_db_users', 'insert_priv', 5, 'boolean', false, false, false, 'the INSERT privilege', '1.0a100', null);
select "schema".add_column('mysql_db_users', 'update_priv', 6, 'boolean', false, false, false, 'the UPDATE privilege', '1.0a100', null);
select "schema".add_column('mysql_db_users', 'delete_priv', 7, 'boolean', false, false, false, 'the DELETE privilege', '1.0a100', null);
select "schema".add_column('mysql_db_users', 'create_priv', 8, 'boolean', false, false, false, 'the CREATE privilege', '1.0a100', null);
select "schema".add_column('mysql_db_users', 'drop_priv', 9, 'boolean', false, false, false, 'the DROP privilege', '1.0a100', null);
select "schema".add_column('mysql_db_users', 'grant_priv', 10, 'boolean', false, false, false, 'the GRANT privilege', '1.0a100', null);
select "schema".add_column('mysql_db_users', 'references_priv', 11, 'boolean', false, false, false, 'the REFERENCES privilege', '1.0a100', null);
select "schema".add_column('mysql_db_users', 'index_priv', 12, 'boolean', false, false, false, 'the INDEX privilege', '1.0a100', null);
select "schema".add_column('mysql_db_users', 'alter_priv', 13, 'boolean', false, false, false, 'the ALTER privilete', '1.0a100', null);
select "schema".add_column('mysql_db_users', 'create_tmp_table_priv', 14, 'boolean', false, false, false, 'the Create_tmp_table_priv', '1.0a111', null);
select "schema".add_column('mysql_db_users', 'lock_tables_priv', 15, 'boolean', false, false, false, 'the Lock_tables_priv', '1.0a111', null);
select "schema".add_column('mysql_db_users', 'create_view_priv', 16, 'boolean', false, false, false, 'the Create_view_priv', '1.4', null);
select "schema".add_column('mysql_db_users', 'show_view_priv', 17, 'boolean', false, false, false, 'the Show_view_priv', '1.4', null);
select "schema".add_column('mysql_db_users', 'create_routine_priv', 18, 'boolean', false, false, false, 'the Create_routine_priv', '1.4', null);
select "schema".add_column('mysql_db_users', 'alter_routine_priv', 19, 'boolean', false, false, false, 'the Alter_routine_priv', '1.4', null);
select "schema".add_column('mysql_db_users', 'execute_priv', 20, 'boolean', false, false, false, 'the Execute_priv', '1.4', null);
select "schema".add_column('mysql_db_users', 'event_priv', 21, 'boolean', false, false, false, 'the Event_priv', '1.54', null);
select "schema".add_column('mysql_db_users', 'trigger_priv', 22, 'boolean', false, false, false, 'the Trigger_priv', '1.54', null);

\echo mysql_server_users
select "schema".add_column('mysql_server_users', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('mysql_server_users', 'username', 1, 'username', false, false, false, 'the username', '1.0a100', '1.80');
select "schema".add_column('mysql_server_users', 'username', 2, 'mysql_username', false, false, false, 'the username', '1.80.0', null);
select "schema".add_column('mysql_server_users', 'ao_server', 3, 'fkey', false, false, false, 'the pkey of the MySQL server', '1.0a100', '1.3');
select "schema".add_column('mysql_server_users', 'mysql_server', 4, 'fkey', false, false, false, 'the pkey of the MySQL server', '1.4', null);
select "schema".add_column('mysql_server_users', 'host', 5, 'ip_address', false, false, false,
'the host this user is allowed to connect from,
if this is not null, all access is restricted to these
hosts, otherwise the entries in mysql_db_users and
mysql_hosts are used.',
    '1.0a100',
    '1.68'
);
select "schema".add_column(
    'mysql_server_users',
    'host',
    6,
    'string',
    false,
    false,
    false,
'the host this user is allowed to connect from,
if this is not null, all access is restricted to these
hosts, otherwise the entries in mysql_db_users and
mysql_hosts are used.',
    '1.69',
    null
);
select "schema".add_column('mysql_server_users', 'disable_log', 7, 'fkey', true, false, false, 'indicates that this account is disabled', '1.0a100', null);
select "schema".add_column('mysql_server_users', 'predisable_password', 8, 'string', true, false, false, 'the password used before the account was disabled', '1.0a100', null);
select "schema".add_column('mysql_server_users', 'max_questions', 9, 'int', false, false, false, 'the maximum number of questions to this database server, 0 means unlimited', '1.4', null);
select "schema".add_column('mysql_server_users', 'max_updates', 10, 'int', false, false, false, 'the maximum number of updates to this database server, 0 means unlimited', '1.4', null);
select "schema".add_column('mysql_server_users', 'max_connections', 11, 'int', false, false, false, 'the maximum number of connections to this database server, 0 means unlimited', '1.0a111', null);
select "schema".add_column('mysql_server_users', 'max_user_connections', 12, 'int', false, false, false, 'the maximum number of user connections to this database server, 0 means unlimited', '1.4', null);

\echo mysql_servers
select "schema".add_column('mysql_servers', 'pkey', 0, 'pkey', false, true, false, 'a unique, generated primary key', '1.4', null);
select "schema".add_column('mysql_servers', 'name', 1, 'string', false, false, false, 'the name of the server', '1.4', '1.80');
select "schema".add_column('mysql_servers', 'name', 2, 'mysql_server_name', false, false, false, 'the name of the server', '1.80.0', null);
select "schema".add_column('mysql_servers', 'ao_server', 3, 'fkey', false, false, false, 'the pkey of the server that this database is hosted on', '1.4', null);
select "schema".add_column('mysql_servers', 'version', 4, 'fkey', false, false, false, 'the pkey of the MySQL version', '1.4', null);
select "schema".add_column('mysql_servers', 'max_connections', 5, 'int', false, false, false, 'the maximum number of connections for the db', '1.4', null);
select "schema".add_column('mysql_servers', 'net_bind', 6, 'fkey', false, true, false, 'the port the server binds to', '1.4', null);
select "schema".add_column('mysql_servers', 'package', 7, 'string', false, false, false, 'the package who owns the instance', '1.28', '1.80');
select "schema".add_column('mysql_servers', 'package', 8, 'accounting', false, false, false, 'the package who owns the instance', '1.80.0', null);

\echo mysql_users
select "schema".add_column('mysql_users', 'username', 0, 'username', false, true, false, 'the username of the MySQL user', '1.0a100', '1.80');
select "schema".add_column('mysql_users', 'username', 1, 'mysql_username', false, true, false, 'the username of the MySQL user', '1.80.0', null);
select "schema".add_column('mysql_users', 'select_priv', 2, 'boolean', false, false, false, 'the SELECT privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql_users', 'insert_priv', 3, 'boolean', false, false, false, 'the INSERT privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql_users', 'update_priv', 4, 'boolean', false, false, false, 'the UPDATE privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql_users', 'delete_priv', 5, 'boolean', false, false, false, 'the DELETE privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql_users', 'create_priv', 6, 'boolean', false, false, false, 'the CREATE privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql_users', 'drop_priv', 7, 'boolean', false, false, false, 'the DROP privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql_users', 'reload_priv', 8, 'boolean', false, false, false, 'the RELOAD privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql_users', 'shutdown_priv', 9, 'boolean', false, false, false, 'the SHUTDOWN privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql_users', 'process_priv', 10, 'boolean', false, false, false, 'the PROCESS privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql_users', 'file_priv', 11, 'boolean', false, false, false, 'the FILE privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql_users', 'grant_priv', 12, 'boolean', false, false, false, 'the GRANT privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql_users', 'references_priv', 13, 'boolean', false, false, false, 'the REFERENCES privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql_users', 'index_priv', 14, 'boolean', false, false, false, 'the INDEX privilege to all databases', '1.0a100', null);
select "schema".add_column('mysql_users', 'alter_priv', 15, 'boolean', false, false, false, 'the ALTER privilete to all databases', '1.0a100', null);
select "schema".add_column('mysql_users', 'show_db_priv', 16, 'boolean', false, false, false, '', '1.0a111', null);
select "schema".add_column('mysql_users', 'super_priv', 17, 'boolean', false, false, false, '', '1.0a111', null);
select "schema".add_column('mysql_users', 'create_tmp_table_priv', 18, 'boolean', false, false, false, '', '1.0a111', null);
select "schema".add_column('mysql_users', 'lock_tables_priv', 19, 'boolean', false, false, false, '', '1.0a111', null);
select "schema".add_column('mysql_users', 'execute_priv', 20, 'boolean', false, false, false, '', '1.0a111', null);
select "schema".add_column('mysql_users', 'repl_slave_priv', 21, 'boolean', false, false, false, '', '1.0a111', null);
select "schema".add_column('mysql_users', 'repl_client_priv', 22, 'boolean', false, false, false, '', '1.0a111', null);
select "schema".add_column('mysql_users', 'create_view_priv', 23, 'boolean', false, false, false, '', '1.4', null);
select "schema".add_column('mysql_users', 'show_view_priv', 24, 'boolean', false, false, false, '', '1.4', null);
select "schema".add_column('mysql_users', 'create_routine_priv', 25, 'boolean', false, false, false, '', '1.4', null);
select "schema".add_column('mysql_users', 'alter_routine_priv', 26, 'boolean', false, false, false, '', '1.4', null);
select "schema".add_column('mysql_users', 'create_user_priv', 27, 'boolean', false, false, false, '', '1.4', null);
select "schema".add_column('mysql_users', 'event_priv', 28, 'boolean', false, false, false, 'the Event_priv', '1.54', null);
select "schema".add_column('mysql_users', 'trigger_priv', 29, 'boolean', false, false, false, 'the Trigger_priv', '1.54', null);
select "schema".add_column('mysql_users', 'disable_log', 30, 'fkey', true, false, false, 'indicates that this account is disabled', '1.0a100', null);

\echo net_bind_firewalld_zones
select "schema".add_column('net_bind_firewalld_zones', 'pkey', 0, 'pkey', false, true, false, 'a generated pkey', '1.81.0', null);
select "schema".add_column('net_bind_firewalld_zones', 'net_bind', 1, 'fkey', false, false, false, 'the pkey of the port that is associated with the zone', '1.81.0', null);
select "schema".add_column('net_bind_firewalld_zones', 'firewalld_zone', 2, 'fkey', false, false, false, 'the pkey of the zone this port is associated with', '1.81.0', null);

\echo net_binds
select "schema".add_column('net_binds', 'pkey', 0, 'pkey', false, true, false, 'a generated pkey', '1.0a100', null);
select "schema".add_column('net_binds', 'package', 1, 'package', false, false, false, 'the package that owns the opened port', '1.0a100', '1.80');
select "schema".add_column('net_binds', 'package', 2, 'accounting', false, false, false, 'the package that owns the opened port', '1.80.0', null);
select "schema".add_column('net_binds', 'ao_server', 3, 'fkey', false, false, false, 'the pkey of the server that this port is bound on', '1.0a100', '1.32');
select "schema".add_column('net_binds', 'server', 4, 'fkey', false, false, false, 'the pkey of the server that this port is bound on', '1.33', null);
select "schema".add_column('net_binds', 'ip_address', 5, 'fkey', false, false, false, 'the pkey of the IP address that is bound to', '1.0a100', null);
select "schema".add_column('net_binds', 'port', 6, 'int', false, false, false, 'the port number that is bound', '1.0a100', '1.68');
select "schema".add_column('net_binds', 'port', 7, 'fkey', false, false, false, 'the port number that is bound', '1.69', '1.80');
select "schema".add_column('net_binds', 'port', 8, 'net_port', false, false, false, 'the port that is bound', '1.80.0', null);
select "schema".add_column('net_binds', 'net_protocol', 9, 'string', false, false, false, 'the network protocol (<code>net_protocols</code>)', '1.0a100', '1.80');
select "schema".add_column('net_binds', 'app_protocol', 10, 'string', false, false, false, 'the application protocol (<code>protocols</code>)', '1.0a100', null);
select "schema".add_column('net_binds', 'open_firewall', 11, 'boolean', false, false, false, 'flags if the firewall should be opened for this port', '1.0a100', '1.80.2');
select "schema".add_column('net_binds', 'monitor_delay', 12, 'int', true, false, false, '', '1.0a100', '1.0a103');
select "schema".add_column('net_binds', 'monitor_parameter', 13, 'string', true, false, false, '', '1.0a100', '1.0a103');
select "schema".add_column('net_binds', 'monitor_contact', 14, 'string', true, false, false, '', '1.0a100', '1.0a103');
select "schema".add_column('net_binds', 'monitor_info', 15, 'string', true, false, false, '', '1.0a100', '1.0a103');
select "schema".add_column('net_binds', 'monitoring_enabled', 16, 'boolean', false, false, false, 'turns on monitoring of the port', '1.0a104', null);
select "schema".add_column('net_binds', 'monitoring_parameters', 17, 'string', true, false, false, 'the URL-encoded name=value pairs of monitoring parameters', '1.58', null);

\echo net_device_ids
select "schema".add_column('net_device_ids', 'name', 0, 'string', false, true, true, 'the unique name of the device', '1.0a100', null);
select "schema".add_column('net_device_ids', 'is_loopback', 1, 'boolean', false, false, true, 'if the device is the loopback device', '1.0a100', null);

\echo net_devices
select "schema".add_column('net_devices', 'pkey', 0, 'pkey', false, true, false, 'a unique, generated pkey', '1.0a100', null);
select "schema".add_column('net_devices', 'ao_server', 1, 'fkey', false, false, false, 'the pkey of the server that contains the device', '1.0a100', '1.32');
select "schema".add_column('net_devices', 'server', 2, 'fkey', false, false, false, 'the pkey of the server that contains the device', '1.33', null);
select "schema".add_column('net_devices', 'device_id', 3, 'string', false, false, false, 'the name of the device', '1.0a100', null);
select "schema".add_column('net_devices', 'description', 4, 'string', false, false, false, 'a description of the device', '1.0a100', null);
select "schema".add_column('net_devices', 'delete_redhat_route', 5, 'string', true, false, false, 'the default routing from the network scripts that should be removed', '1.0a100', '1.0a111');
select "schema".add_column('net_devices', 'delete_route', 6, 'string', true, false, false, 'the default routing from the network scripts that should be removed', '1.0a112', null);
select "schema".add_column('net_devices', 'gateway', 7, 'ip_address', true, false, false, 'the gateway IP address', '1.0a100', null);
select "schema".add_column('net_devices', 'netmask', 8, 'string', false, false, false, 'the netmask of the local network', '1.0a100', '1.37');
select "schema".add_column('net_devices', 'network', 9, 'ip_address', true, false, false, 'the local network', '1.0a112', null);
select "schema".add_column('net_devices', 'broadcast', 10, 'ip_address', true, false, false, 'the broadcast IP', '1.0a112', null);
select "schema".add_column('net_devices', 'mac_address', 11, 'string', true, true, false, 'the MAC address to be used on the device', '1.0a128', '1.80');
select "schema".add_column('net_devices', 'mac_address', 12, 'mac_address', true, true, false, 'the MAC address to be used on the device', '1.80.0', null);
select "schema".add_column('net_devices', 'max_bit_rate', 13, 'long', true, false, false, 'the maximum bits per second for this network device', '1.2', null);
select "schema".add_column('net_devices', 'monitoring_bit_rate_low', 14, 'long', true, false, false, 'the 5-minute average that will trigger a low-level alert', '1.35', null);
select "schema".add_column('net_devices', 'monitoring_bit_rate_medium', 15, 'long', true, false, false, 'the 5-minute average that will trigger a medium-level alert', '1.35', null);
select "schema".add_column('net_devices', 'monitoring_bit_rate_high', 16, 'long', true, false, false, 'the 5-minute average that will trigger a high-level alert', '1.35', null);
select "schema".add_column('net_devices', 'monitoring_bit_rate_critical', 17, 'long', true, false, false, 'the 5-minute average that will trigger a critical-level alert', '1.35', null);
select "schema".add_column('net_devices', 'monitoring_enabled', 18, 'boolean', false, false, false, 'indicates that this device should be monitored', '1.70', null);

\echo net_tcp_redirects
select "schema".add_column('net_tcp_redirects', 'net_bind', 0, 'int', false, true, false, 'the pkey as found in net_binds', '1.0a111', '1.68');
select "schema".add_column('net_tcp_redirects', 'net_bind', 1, 'fkey', false, true, false, 'the pkey as found in net_binds', '1.69', null);
select "schema".add_column('net_tcp_redirects', 'cps', 2, 'int', false, false, false, 'the maximum number of connections per second before the redirect is temporarily disabled', '1.0a111', null);
select "schema".add_column('net_tcp_redirects', 'cps_overload_sleep_time', 3, 'int', false, false, false, 'the number of seconds the service will be disabled', '1.0a111', null);
select "schema".add_column('net_tcp_redirects', 'destination_host', 4, 'hostname', false, false, false, 'the destination IP address or hostname, please note that hostnames are only resolved once on xinetd startup', '1.0a111', null);
select "schema".add_column('net_tcp_redirects', 'destination_port', 5, 'int', false, false, false, 'the remote port to connect to', '1.0a111', '1.68');
select "schema".add_column('net_tcp_redirects', 'destination_port', 6, 'fkey', false, false, false, 'the remote port to connect to', '1.69', '1.80');
select "schema".add_column('net_tcp_redirects', 'destination_port', 7, 'net_port', false, false, false, 'the remote port to connect to', '1.80.0', null);

\echo notice_logs
select "schema".add_column('notice_log', 'pkey', 0, 'pkey', false, true, false, '', '1.0a100', null);
select "schema".add_column('notice_log', 'create_time', 1, 'time', false, false, false, '', '1.0a100', null);
select "schema".add_column('notice_log', 'accounting', 2, 'accounting', false, false, false, '', '1.0a100', null);
select "schema".add_column('notice_log', 'billing_contact', 3, 'string', false, false, false, '', '1.0a100', null);
select "schema".add_column('notice_log', 'billing_email', 4, 'email', false, false, false, '', '1.0a100', null);
select "schema".add_column('notice_log', 'balance', 5, 'decimal_2', false, false, false, '', '1.0a100', null);
select "schema".add_column('notice_log', 'notice_type', 6, 'string', false, false, false, '', '1.0a100', null);
select "schema".add_column('notice_log', 'transid', 7, 'int', true, false, false, '', '1.0a100', '1.68');
select "schema".add_column('notice_log', 'transid', 8, 'fkey', true, false, false, '', '1.69', null);

\echo notice_types
select "schema".add_column('notice_types', 'type', 0, 'string', false, true, true, '', '1.0a100', null);
select "schema".add_column('notice_types', 'description', 1, 'string', false, false, true, '', '1.0a100', null);

\echo operating_system_versions
select "schema".add_column('operating_system_versions', 'pkey', 0, 'pkey', false, true, true, 'a generated, unique ID', '1.0a100', null);
select "schema".add_column('operating_system_versions', 'operating_system', 1, 'string', false, false, true, 'the name of the OS', '1.0a100', null);
select "schema".add_column('operating_system_versions', 'version_number', 2, 'string', false, false, true, 'the number of OS version', '1.0a100', null);
select "schema".add_column('operating_system_versions', 'version_name', 3, 'string', false, false, true, 'the name of this OS release', '1.0a100', null);
select "schema".add_column('operating_system_versions', 'architecture', 4, 'string', false, false, true, 'the name of the architecture', '1.0a108', null);
select "schema".add_column('operating_system_versions', 'display', 5, 'string', false, false, true, 'the full display name for this version', '1.0a100', '1.0a107');
select "schema".add_column('operating_system_versions', 'display', 6, 'string', false, true, true, 'the full display name for this version', '1.0a108', null);
select "schema".add_column('operating_system_versions', 'is_aoserv_daemon_supported', 7, 'boolean', false, false, true, 'can AOServ Daemon be ran on this OS', '1.0a108', null);
select "schema".add_column('operating_system_versions', 'sort_order', 8, 'short', false, true, true, 'the default sort order', '1.3', null);

\echo operating_systems
select "schema".add_column('operating_systems', 'name', 0, 'string', false, true, true, 'the unique name of the operating system', '1.0a100', null);
select "schema".add_column('operating_systems', 'display', 1, 'string', false, false, true, 'the display version of the name', '1.0a100', null);
select "schema".add_column('operating_systems', 'is_unix', 2, 'boolean', false, false, true, 'indicates that this is a Unix-based OS', '1.0a100', null);

\echo package_categories
select "schema".add_column('package_categories', 'name', 0, 'string', false, true, true, 'the category name', '1.0a123', null);
select "schema".add_column('package_categories', 'display', 1, 'string', false, false, true, 'the display value', '1.0a123', '1.60');

\echo package_definition_limits
select "schema".add_column('package_definition_limits', 'pkey', 0, 'pkey', false, true, false, 'the unique identifier for this limit', '1.0a123', null);
select "schema".add_column('package_definition_limits', 'package_definition', 1, 'fkey', false, false, false, 'the pkey of the package definition', '1.0a123', null);
select "schema".add_column('package_definition_limits', 'resource', 2, 'string', false, false, false, 'the resource name', '1.0a123', null);
select "schema".add_column('package_definition_limits', 'soft_limit', 3, 'int', true, false, false, 'the number that may be used for additional charges are added, NULL means unlimited', '1.0a123', null);
select "schema".add_column('package_definition_limits', 'hard_limit', 4, 'int', true, false, false, 'the maximum number that may be allocated, NULL means unlimited', '1.0a123', null);
select "schema".add_column('package_definition_limits', 'additional_rate', 5, 'decimal_2', true, false, false, 'the monthly rate for those past the soft_limit', '1.0a123', null);
select "schema".add_column('package_definition_limits', 'additional_transaction_type', 6, 'string', true, false, false, '', '1.0a123', null);

\echo package_definitions
select "schema".add_column('package_definitions', 'pkey', 0, 'pkey', false, true, false, 'the unique ID of the package definition', '1.0a123', null);
select "schema".add_column('package_definitions', 'accounting', 1, 'accounting', false, false, false, 'the accounting code of the seller/reseller that supports this package', '1.0a123', '1.43');
select "schema".add_column('package_definitions', 'brand', 2, 'accounting', false, false, false, 'the brand of the seller/reseller that supports this package', '1.44', '1.44');
select "schema".add_column('package_definitions', 'accounting', 3, 'accounting', false, false, false, 'the accounting code of the seller/reseller that supports this package', '1.45', null);
select "schema".add_column('package_definitions', 'category', 4, 'string', false, false, false, 'the package category', '1.0a123', null);
select "schema".add_column('package_definitions', 'name', 5, 'string', false, false, false, 'the name of the package', '1.0a123', null);
select "schema".add_column('package_definitions', 'version', 6, 'string', false, false, false, 'the unique version of this package', '1.0a123', null);
select "schema".add_column('package_definitions', 'display', 7, 'string', false, false, false, 'a short description for display use', '1.0a123', null);
select "schema".add_column('package_definitions', 'description', 8, 'string', false, false, false, 'a description of the package definition', '1.0a123', null);
select "schema".add_column('package_definitions', 'setup_fee', 9, 'decimal_2', true, false, false, 'the setup fee for this package definition', '1.0a123', null);
select "schema".add_column('package_definitions', 'setup_fee_transaction_type', 10, 'string', true, false, false, '', '1.0a123', null);
select "schema".add_column('package_definitions', 'monthly_rate', 11, 'decimal_2', true, false, false, 'the default monthly charge for this package', '1.0a123', null);
select "schema".add_column('package_definitions', 'monthly_rate_transaction_type', 12, 'string', true, false, false, '', '1.0a123', null);
select "schema".add_column('package_definitions', 'active', 13, 'boolean', false, false, false, 'allows new accounts for this package', '1.0a123', null);
select "schema".add_column('package_definitions', 'approved', 14, 'boolean', false, false, false, 'once approved a definition may be used for packages, but may not be modified', '1.0a123', null);

\echo packages
select "schema".add_column('packages', 'pkey', 0, 'pkey', false, true, false, 'a generated unique key', '1.0a100', null);
select "schema".add_column('packages', 'name', 1, 'package', false, true, false, 'the unique name of this package entry', '1.0a100', '1.80');
select "schema".add_column('packages', 'name', 2, 'accounting', false, true, false, 'the unique name of this package entry', '1.80.0', null);
select "schema".add_column('packages', 'accounting', 3, 'accounting', false, false, false, 'the accounting code of the business that pays for this package', '1.0a100', null);
select "schema".add_column('packages', 'level', 4, 'string', false, false, false, '', '1.0a100', '1.0a122');
select "schema".add_column('packages', 'rate', 5, 'decimal_2', true, false, false, '', '1.0a100', '1.0a122');
select "schema".add_column('packages', 'package_definition', 6, 'fkey', false, false, false, 'the definition of the package', '1.0a123', null);
select "schema".add_column('packages', 'created', 7, 'time', false, false, false, '', '1.0a100', null);
select "schema".add_column('packages', 'created_by', 8, 'username', false, false, false, '', '1.0a100', null);
select "schema".add_column('packages', 'user_limit', 9, 'int', true, false, false, '', '1.0a100', '1.0a122');
select "schema".add_column('packages', 'additional_user_rate', 10, 'decimal_2', true, false, false, '', '1.0a100', '1.0a122');
select "schema".add_column('packages', 'pop_limit', 11, 'int', true, false, false, '', '1.0a100', '1.0a122');
select "schema".add_column('packages', 'additional_pop_rate', 12, 'decimal_2', true, false, false, '', '1.0a100', '1.0a122');
select "schema".add_column('packages', 'daily_smtp_in_limit', 13, 'int', false, false, false, 'the number of emails allowed through SMTP servers in one day', '1.0a100', '1.30');
select "schema".add_column('packages', 'daily_smtp_in_bandwidth_limit', 14, 'long', false, false, false, 'the total size of emails allowed through SMTP servers in one day', '1.0a100', '1.30');
select "schema".add_column('packages', 'daily_smtp_out_limit', 15, 'int', false, false, false, 'the number of emails allowed through SMTP servers in one day', '1.0a100', '1.30');
select "schema".add_column('packages', 'daily_smtp_out_bandwidth_limit', 16, 'long', false, false, false, 'the total size of emails allowed through SMTP servers in one day', '1.0a100', '1.30');
select "schema".add_column('packages', 'disable_log', 17, 'fkey', true, false, false, 'indicates that the package is disabled', '1.0a100', null);
select "schema".add_column('packages', 'email_in_burst', 18, 'int', true, false, false, 'the maximum burst of inbound email before limiting begins', '1.24', null);
select "schema".add_column('packages', 'email_in_rate', 19, 'float', true, false, false, 'the number of sustained inbound emails per second', '1.24', null);
select "schema".add_column('packages', 'email_out_burst', 20, 'int', true, false, false, 'the maximum burst of outbound email before limiting begins', '1.24', null);
select "schema".add_column('packages', 'email_out_rate', 21, 'float', true, false, false, 'the number of sustained outbound emails per second', '1.24', null);
select "schema".add_column('packages', 'email_relay_burst', 22, 'int', true, false, false, 'the maximum burst of relay email before limiting begins', '1.24', null);
select "schema".add_column('packages', 'email_relay_rate', 23, 'float', true, false, false, 'the number of sustained relay emails per second', '1.24', null);

\echo payment_types
select "schema".add_column('payment_types', 'name', 0, 'string', false, true, true, 'the name of the type', '1.0a100', null);
select "schema".add_column('payment_types', 'description', 1, 'string', false, false, true, 'a description of the type of payment', '1.0a100', null);
select "schema".add_column('payment_types', 'active', 2, 'boolean', false, false, true, 'indicates if payment is currently accepted via this method', '1.0a100', null);
select "schema".add_column('payment_types', 'allow_web', 3, 'boolean', false, false, true, 'indicates if payment is allowed via a web form', '1.0a100', null);

\echo physical_servers
select "schema".add_column('physical_servers', 'server', 0, 'fkey', false, true, false, 'a reference to servers', '1.36', null);
select "schema".add_column('physical_servers', 'rack', 1, 'fkey', true, false, false, 'the rack that houses this server', '1.36', null);
select "schema".add_column('physical_servers', 'rack_units', 2, 'short', true, false, false, 'the number of rack units', '1.36', null);
select "schema".add_column('physical_servers', 'ram', 3, 'int', true, false, false, 'the total number of megabytes of RAM in this server', '1.36', null);
select "schema".add_column('physical_servers', 'processor_type', 4, 'string', true, false, false, 'the processor type', '1.36', null);
select "schema".add_column('physical_servers', 'processor_speed', 5, 'int', true, false, false, 'the processor speed in MHz', '1.36', null);
select "schema".add_column('physical_servers', 'processor_cores', 6, 'int', true, false, false, 'the total number of processor cores, hyperthreads are counted as different cores', '1.36', null);
select "schema".add_column('physical_servers', 'max_power', 7, 'float', true, false, false, 'the number of amps this server consumes under peak load', '1.36', null);
select "schema".add_column('physical_servers', 'supports_hvm', 8, 'boolean', true, false, false, 'indicates supports full hardware virtualization', '1.37', null);
select "schema".add_column('physical_servers', 'ups_type', 9, 'string', false, false, false, 'the type of UPS powering the server', '1.63', null);

\echo postgres_databases
select "schema".add_column('postgres_databases', 'pkey', 0, 'pkey', false, true, false, 'a unique, generated primary key', '1.0a100', null);
select "schema".add_column('postgres_databases', 'name', 1, 'string', false, false, false, 'the name of the database', '1.0a100', '1.80');
select "schema".add_column('postgres_databases', 'name', 2, 'postgres_database_name', false, false, false, 'the name of the database', '1.80.0', null);
select "schema".add_column('postgres_databases', 'postgres_server', 3, 'fkey', false, false, false, 'the pkey of the PostgreSQL server', '1.0a100', null);
select "schema".add_column('postgres_databases', 'datdba', 4, 'fkey', false, false, false, 'the datdba for the database', '1.0a100', null);
select "schema".add_column('postgres_databases', 'encoding', 5, 'fkey', false, false, false, 'the pkey of the encoding system used for the database', '1.0a100', null);
select "schema".add_column('postgres_databases', 'is_template', 6, 'boolean', false, false, false, 'if true, this database is a template', '1.0a100', null);
select "schema".add_column('postgres_databases', 'allow_conn', 7, 'boolean', false, false, false, 'if true, this database is accepting connections', '1.0a100', null);
select "schema".add_column('postgres_databases', 'backup_level', 8, 'short', false, false, false, 'the number of backup copies to keep', '1.0a100', '1.30');
select "schema".add_column('postgres_databases', 'backup_retention', 9, 'short', false, false, false, 'the number of days backups will be kept', '1.0a100', '1.30');
select "schema".add_column('postgres_databases', 'enable_postgis', 10, 'boolean', false, false, false, 'indicates PostGIS is enabled on this database', '1.27', null);

\echo postgres_encodings
select "schema".add_column('postgres_encodings', 'pkey', 0, 'pkey', false, true, true, 'a generated unique key', '1.0a100', null);
select "schema".add_column('postgres_encodings', 'encoding', 1, 'string', false, false, true, 'the name of the encoding', '1.0a100', null);
select "schema".add_column('postgres_encodings', 'postgres_version', 2, 'fkey', false, false, true, 'the version of PostgreSQL', '1.0a100', null);

\echo postgres_servers
select "schema".add_column('postgres_servers', 'pkey', 0, 'pkey', false, true, false, 'a unique, generated primary key', '1.0a100', null);
select "schema".add_column('postgres_servers', 'name', 1, 'string', false, false, false, 'the name of the database', '1.0a100', '1.80');
select "schema".add_column('postgres_servers', 'name', 2, 'postgres_server_name', false, false, false, 'the name of the database', '1.80.0', null);
select "schema".add_column('postgres_servers', 'ao_server', 3, 'fkey', false, false, false, 'the pkey of the server that this database is hosted on', '1.0a100', null);
select "schema".add_column('postgres_servers', 'version', 4, 'fkey', false, false, false, 'the pkey of the PostgreSQL version', '1.0a100', null);
select "schema".add_column('postgres_servers', 'max_connections', 5, 'int', false, false, false, 'the maximum number of connections for the db', '1.0a100', null);
select "schema".add_column('postgres_servers', 'net_bind', 6, 'fkey', false, true, false, 'the port the server binds to', '1.0a100', null);
select "schema".add_column('postgres_servers', 'sort_mem', 7, 'int', false, false, false, 'the amount of shared memory used for sorting', '1.0a100', null);
select "schema".add_column('postgres_servers', 'shared_buffers', 8, 'int', false, false, false, 'the number of shared buffers', '1.0a100', null);
select "schema".add_column('postgres_servers', 'fsync', 9, 'boolean', false, false, false, 'indicates that writes are synchronous', '1.0a100', null);
select "schema".add_column('postgres_servers', 'last_postgres_usesysid', 10, 'fkey', false, false, false, 'the last usesysid assigned on the server', '1.0a100', '1.0a130');

\echo postgres_server_users
select "schema".add_column('postgres_server_users', 'pkey', 0, 'pkey', false, true, false, 'a unique, generated number', '1.0a100', null);
select "schema".add_column('postgres_server_users', 'username', 1, 'username', false, false, false, 'the username as found in postgres_users', '1.0a100', '1.80');
select "schema".add_column('postgres_server_users', 'username', 2, 'postgres_username', false, false, false, 'the username as found in postgres_users', '1.80.0', null);
select "schema".add_column('postgres_server_users', 'postgres_server', 3, 'pkey', false, false, false, 'the pkey of the PostgreSQL server', '1.0a100', '1.68');
select "schema".add_column('postgres_server_users', 'postgres_server', 4, 'fkey', false, false, false, 'the pkey of the PostgreSQL server', '1.69', null);
select "schema".add_column('postgres_server_users', 'usesysid', 5, 'int', false, false, false, 'the PostgreSQL usesysid as found in pg_users', '1.0a100', '1.0a130');
select "schema".add_column('postgres_server_users', 'disable_log', 6, 'fkey', true, false, false, 'indicates that this account is disabled', '1.0a100', null);
select "schema".add_column('postgres_server_users', 'predisable_password', 7, 'string', true, false, false, 'the password that was on the account before it was disabled', '1.0a100', null);

\echo postgres_users
select "schema".add_column('postgres_users', 'username', 0, 'username', false, true, false, 'the username of the user', '1.0a100', '1.80');
select "schema".add_column('postgres_users', 'username', 1, 'postgres_username', false, true, false, 'the username of the user', '1.80.0', null);
select "schema".add_column('postgres_users', 'createdb', 2, 'boolean', false, false, false, 'usecreatedb flag', '1.0a100', null);
select "schema".add_column('postgres_users', 'trace', 3, 'boolean', false, false, false, 'usetrace flag', '1.0a100', null);
select "schema".add_column('postgres_users', 'super', 4, 'boolean', false, false, false, 'usesuper flag', '1.0a100', null);
select "schema".add_column('postgres_users', 'catupd', 5, 'boolean', false, false, false, 'usecatupd flag', '1.0a100', null);
select "schema".add_column('postgres_users', 'disable_log', 6, 'fkey', true, false, false, 'indicates that this account is disabled', '1.0a100', null);

\echo postgres_versions
select "schema".add_column('postgres_versions', 'version', 0, 'fkey', false, true, true, 'a reference to the PostgreSQL details in the <code>technology_versions</code> table', '1.0a100', null);
select "schema".add_column('postgres_versions', 'default_port', 1, 'int', false, true, true, '', '1.0a100', '1.0a109');
select "schema".add_column('postgres_versions', 'minor_version', 2, 'string', false, false, true, 'the minor version for this version (used for installation at /usr/postgresql/<minor_version>', '1.0a121', null);
select "schema".add_column('postgres_versions', 'postgis_version', 3, 'fkey', true, false, true, 'a reference to the PostGIS defails in the <code>technology_versions</code> table', '1.27', null);

\echo private_ftp_servers
select "schema".add_column('private_ftp_servers', 'ip_address', 0, 'fkey', false, true, false, 'the pkey of the net_bind that the FTP server is on', '1.0a100', '1.0a112');
select "schema".add_column('private_ftp_servers', 'net_bind', 1, 'fkey', false, true, false, 'the root directory', '1.0a113', null);
select "schema".add_column('private_ftp_servers', 'root', 2, 'path', false, false, false, 'the file transfers are logged to', '1.0a100', '1.38');
select "schema".add_column('private_ftp_servers', 'logfile', 3, 'path', false, false, false, 'the file transfers are logged to', '1.0a100', null);
select "schema".add_column('private_ftp_servers', 'hostname', 4, 'hostname', false, false, false, 'the hostname the server reports', '1.0a100', '1.68');
select "schema".add_column('private_ftp_servers', 'hostname', 5, 'domain_name', false, false, false, 'the hostname the server reports', '1.69', null);
select "schema".add_column('private_ftp_servers', 'email', 6, 'email', false, false, false, 'the email address the server reports', '1.0a100', null);
select "schema".add_column('private_ftp_servers', 'price', 7, 'decimal_2', true, false, false, '', '1.0a100', '1.0a122');
select "schema".add_column('private_ftp_servers', 'created', 8, 'time', false, false, false, 'the time the server was added', '1.0a100', null);
select "schema".add_column('private_ftp_servers', 'linux_server_account', 9, 'int', false, false, false, '', '1.0a100', '1.68');
select "schema".add_column('private_ftp_servers', 'linux_server_account', 10, 'fkey', false, false, false, '', '1.69', null);
select "schema".add_column('private_ftp_servers', 'linux_server_group', 11, 'int', false, false, false, '', '1.0a100', '1.38');
select "schema".add_column('private_ftp_servers', 'allow_anonymous', 12, 'boolean', false, false, false, 'enabled or disabled anonymous access to the server', '1.0a113', null);

\echo processor_types
select "schema".add_column('processor_types', 'type', 0, 'string', false, true, true, 'the unique name of the type of processor', '1.36', null);
select "schema".add_column('processor_types', 'sort_order', 1, 'short', false, true, true, 'the sort order of the processor, those sorted higher may be substituted for those sorted lower', '1.36', null);

\echo protocols
select "schema".add_column('protocols', 'protocol', 0, 'string', false, true, true, 'the unique name of the protocol', '1.0a100', null);
select "schema".add_column('protocols', 'port', 1, 'int', false, false, true, 'the default port of the protocol', '1.0a100', '1.68');
select "schema".add_column('protocols', 'port', 2, 'fkey', false, false, true, 'the default port of the protocol', '1.69', '1.80');
select "schema".add_column('protocols', 'port', 3, 'net_port', false, false, true, 'the default port of the protocol', '1.80.0', null);
select "schema".add_column('protocols', 'name', 4, 'string', false, false, true, 'the name of the service', '1.0a100', null);
select "schema".add_column('protocols', 'is_user_service', 5, 'boolean', false, false, true, 'indicates that a user may add and remove this service', '1.0a105', null);
select "schema".add_column('protocols', 'net_protocol', 6, 'string', false, false, true, 'the default network protocol for this protocol', '1.0a105', '1.80');

\echo racks
select "schema".add_column('racks', 'pkey', 0, 'pkey', false, true, false, 'the unique ID for the rack', '1.36', null);
select "schema".add_column('racks', 'farm', 1, 'string', false, false, false, 'the server_farm housing the rack', '1.36', null);
select "schema".add_column('racks', 'name', 2, 'string', false, false, false, 'the per-farm unique name', '1.36', null);
select "schema".add_column('racks', 'max_power', 3, 'float', true, false, false, 'the maximum electrical load supported by the rack', '1.36', null);
select "schema".add_column('racks', 'total_rack_units', 4, 'int', true, false, false, 'the number of rack units of physical space', '1.36', null);

\echo resellers
select "schema".add_column('resellers', 'accounting', 0, 'accounting', false, true, false, '', '1.44', null);
select "schema".add_column('resellers', 'ticket_auto_escalate', 1, 'boolean', false, false, false, '', '1.44', null);

\echo resources
select "schema".add_column('resources', 'name', 0, 'string', false, true, true, 'the name of the specific resource', '1.0a100', null);
select "schema".add_column('resources', 'unit', 1, 'string', false, false, true, '', '1.0a100', '1.0a122');
select "schema".add_column('resources', 'singular_display_unit', 2, 'string', false, false, true, 'the unit for display purposes (singular)', '1.0a123', '1.60');
select "schema".add_column('resources', 'plural_display_unit', 3, 'string', false, false, true, 'the unit for display purposes (plural)', '1.0a123', '1.60');
select "schema".add_column('resources', 'per_unit', 4, 'string', false, false, true, 'the unit for display as a "per"', '1.0a123', '1.60');
select "schema".add_column('resources', 'description', 5, 'string', false, false, true, 'a description of the resource', '1.0a100', '1.60');

\echo sendmail_binds
select "schema".add_column('sendmail_binds', 'net_bind',        0, 'fkey',   false,  true, false, 'the IP address, port, and protocol details',   '1.81.10', null);
select "schema".add_column('sendmail_binds', 'sendmail_server', 1, 'fkey',   false, false, false, 'the server that is listening on the address',  '1.81.10', null);
select "schema".add_column('sendmail_binds', 'servername',      2, 'string',  true, false, false, 'the Name for DaemonPortOptions for this bind', '1.81.10', null);

\echo sendmail_servers
select "schema".add_column('sendmail_servers', 'pkey',                      0, 'pkey',        false,  true, false, 'a generated unique number',                                             '1.81.10', null);
select "schema".add_column('sendmail_servers', 'ao_server',                 1, 'fkey',        false, false, false, 'the pkey of the server that runs this sendmail instance',               '1.81.10', null);
select "schema".add_column('sendmail_servers', 'name',                      2, 'string',       true, false, false, 'the name of the instance on the server, null for the default instance', '1.81.10', null);
select "schema".add_column('sendmail_servers', 'package',                   3, 'fkey',        false, false, false, 'the package that owns the SSL certificate',                             '1.81.10', null);
select "schema".add_column('sendmail_servers', 'hostname',                  4, 'domain_name',  true, false, false, 'the fully qualified hostname for Dw, Dm, and Dj',                       '1.81.10', null);
select "schema".add_column('sendmail_servers', 'server_certificate',        5, 'fkey',        false, false, false, 'the certificate used for this server',                                  '1.81.10', null);
select "schema".add_column('sendmail_servers', 'client_certificate',        6, 'fkey',        false, false, false, 'the certificate used for this client',                                  '1.81.10', null);
select "schema".add_column('sendmail_servers', 'allow_plaintext_auth',      7, 'boolean',     false, false, false, 'allows plaintext authentication (PLAIN/LOGIN) on non-TLS links',        '1.81.10', null);
select "schema".add_column('sendmail_servers', 'max_queue_children',        8, 'int',          true, false, false, 'the value for confMAX_QUEUE_CHILDREN',                                  '1.81.10', null);
select "schema".add_column('sendmail_servers', 'nice_queue_run',            9, 'int',          true, false, false, 'the value for confNICE_QUEUE_RUN',                                      '1.81.10', null);
select "schema".add_column('sendmail_servers', 'delay_la',                 10, 'int',          true, false, false, 'the value for confDELAY_LA',                                            '1.81.10', null);
select "schema".add_column('sendmail_servers', 'queue_la',                 11, 'int',          true, false, false, 'the value for confQUEUE_LA',                                            '1.81.10', null);
select "schema".add_column('sendmail_servers', 'refuse_la',                12, 'int',          true, false, false, 'the value for confREFUSE_LA',                                           '1.81.10', null);
select "schema".add_column('sendmail_servers', 'max_daemon_children',      13, 'int',          true, false, false, 'the value for confMAX_DAEMON_CHILDREN',                                 '1.81.10', null);
select "schema".add_column('sendmail_servers', 'bad_rcpt_throttle',        14, 'int',          true, false, false, 'the value for confBAD_RCPT_THROTTLE',                                   '1.81.10', null);
select "schema".add_column('sendmail_servers', 'connection_rate_throttle', 15, 'int',          true, false, false, 'the value for confCONNECTION_RATE_THROTTLE',                            '1.81.10', null);
select "schema".add_column('sendmail_servers', 'max_message_size',         16, 'int',          true, false, false, 'the value for confMAX_MESSAGE_SIZE',                                    '1.81.10', null);
select "schema".add_column('sendmail_servers', 'min_free_blocks',          17, 'int',          true, false, false, 'the value for confMIN_FREE_BLOCKS',                                     '1.81.10', null);
select "schema".add_column('sendmail_servers', 'client_addr_inet',         18, 'fkey',         true, false, false, 'the Addr for ClientPortOptions with Family=inet',                       '1.81.10', null);
select "schema".add_column('sendmail_servers', 'client_addr_inet6',        19, 'fkey',         true, false, false, 'the Addr for ClientPortOptions with Family=inet6',                      '1.81.10', null);

\echo server_farms
select "schema".add_column('server_farms', 'name', 0, 'string', false, true, false, 'the unique name of the farm', '1.0a100', null);
select "schema".add_column('server_farms', 'description', 1, 'string', false, false, false, 'a description of the farm', '1.0a100', null);
select "schema".add_column('server_farms', 'protected_net', 2, 'string', false, false, false, 'the x.x.x.x/xx network that is protected by the firewalls', '1.0a100', '1.30');
select "schema".add_column('server_farms', 'allow_same_server_backup', 3, 'boolean', false, false, false, 'allows backup files to be stored on the same server as the source files', '1.0a100', '1.30');
select "schema".add_column('server_farms', 'backup_farm', 4, 'string', false, false, false, 'the farm that handles backup for this farm', '1.0a100', '1.30');
select "schema".add_column('server_farms', 'owner', 5, 'fkey', false, false, false, 'the package that owns of the farm', '1.0a102', null);
select "schema".add_column('server_farms', 'use_restricted_smtp_port', 6, 'boolean', false, false, false, 'outgoing servers should use restricted source ports (affects firewall rules)', '1.26', null);

\echo servers
select "schema".add_column('servers', 'pkey', 0, 'pkey', false, true, false, 'a generated, unique ID', '1.0a100', null);
select "schema".add_column('servers', 'hostname', 1, 'hostname', false, true, false, 'the unique hostname of the server', '1.0a100', '1.30');
select "schema".add_column('servers', 'farm', 2, 'string', false, false, false, 'the name of the farm the server is located in', '1.0a100', null);
select "schema".add_column('servers', 'owner', 3, 'accounting', false, false, false, 'the business that owns the server', '1.0a100', '1.30');
select "schema".add_column('servers', 'administrator', 4, 'username', false, false, false, 'the primary administrator of the server', '1.0a100', '1.30');
select "schema".add_column('servers', 'description', 5, 'string', false, false, false, 'a description of the servers purpose', '1.0a100', null);
select "schema".add_column('servers', 'architecture', 6, 'string', false, false, false, '', '1.0a100', '1.0a107');
select "schema".add_column('servers', 'backup_hour', 7, 'int', false, false, false, 'the hour of the day the backup will occur, in server time zone', '1.0a100', '1.30');
select "schema".add_column('servers', 'last_backup_time', 8, 'time', true, false, false, 'the time the last backup was started', '1.0a100', '1.30');
select "schema".add_column('servers', 'operating_system_version', 9, 'fkey', false, false, false, 'the version of operating system running on the server', '1.0a100', '1.30');
select "schema".add_column('servers', 'operating_system_version', 10, 'fkey', true, false, false, 'the version of operating system running on the server, if known', '1.31', null);
select "schema".add_column('servers', 'asset_label', 11, 'string', true, false, false, 'the value contained on any asset label', '1.0a108', '1.30');
select "schema".add_column('servers', 'minimum_power', 12, 'float', true, false, false, 'the minimum power consumption in amps', '1.16', '1.30');
select "schema".add_column('servers', 'maximum_power', 13, 'float', true, false, false, 'the maximum power consumption in amps', '1.16', '1.30');
select "schema".add_column('servers', 'package', 14, 'fkey', false, false, false, 'the package accountable for resources used by the server', '1.31', null);
select "schema".add_column('servers', 'name', 15, 'string', false, false, false, 'the per-package unique name of the server (no special formatting required)', '1.31', null);
select "schema".add_column('servers', 'monitoring_enabled', 16, 'boolean', false, false, false, 'enables/disables monitoring', '1.32', null);

\echo shells
select "schema".add_column('shells', 'path', 0, 'path', false, true, true, 'the complete path to the executable', '1.0a100', null);
select "schema".add_column('shells', 'is_login', 1, 'boolean', false, false, true, 'indicates if the shells gives process control', '1.0a100', null);
select "schema".add_column('shells', 'is_system', 2, 'boolean', false, false, true, 'indicates that this shell is for internal use only', '1.0a100', null);

\echo signup_request_options
select "schema".add_column('signup_request_options', 'pkey', 0, 'pkey', false, true, false, 'a generate unique id', '1.23', null);
select "schema".add_column('signup_request_options', 'request', 1, 'fkey', false, false, false, 'the id of the request this option is part of', '1.23', null);
select "schema".add_column('signup_request_options', 'name', 2, 'string', false, false, false, 'the unique-per-request name of the option', '1.23', null);
select "schema".add_column('signup_request_options', 'value', 3, 'string', true, false, false, 'the value of the option', '1.23', null);

\echo signup_requests
select "schema".add_column('signup_requests', 'pkey', 0, 'pkey', false, true, false, 'a generate unique id', '1.23', null);
select "schema".add_column('signup_requests', 'accounting', 1, 'accounting', false, false, false, 'the accounting code of the parent business for the new account', '1.23', '1.43');
select "schema".add_column('signup_requests', 'brand', 2, 'accounting', false, false, false, 'the brand of the parent business for the new account', '1.44', null);
select "schema".add_column('signup_requests', 'time', 3, 'time', false, false, false, 'the time the request was added', '1.23', null);
select "schema".add_column('signup_requests', 'ip_address', 4, 'ip_address', false, false, false, 'the IP address of the user who signed-up', '1.23', null);
select "schema".add_column('signup_requests', 'package_definition', 5, 'fkey', false, false, false, 'the pkey of the Package Definition requested', '1.23', null);
select "schema".add_column('signup_requests', 'business_name', 6, 'string', false, false, false, 'the name of the business', '1.23', null);
select "schema".add_column('signup_requests', 'business_phone', 7, 'string', false, false, false, 'the phone number of the business', '1.23', '1.68');
select "schema".add_column('signup_requests', 'business_phone', 8, 'phone', false, false, false, 'the phone number of the business', '1.69', null);
select "schema".add_column('signup_requests', 'business_fax', 9, 'string', true, false, false, 'the fax number of the business', '1.23', '1.68');
select "schema".add_column('signup_requests', 'business_fax', 10, 'phone', true, false, false, 'the fax number of the business', '1.69', null);
select "schema".add_column('signup_requests', 'business_address1', 11, 'string', false, false, false, 'the street address of the business', '1.23', null);
select "schema".add_column('signup_requests', 'business_address2', 12, 'string', true, false, false, 'the street address of the business', '1.23', null);
select "schema".add_column('signup_requests', 'business_city',     13, 'city', false, false, false, 'the city  of the business', '1.23', '1.68');
select "schema".add_column('signup_requests', 'business_city',     14, 'string', false, false, false, 'the city  of the business', '1.69', null);
select "schema".add_column('signup_requests', 'business_state',    15, 'state', true, false, false, 'the state or providence of the business', '1.23', '1.68');
select "schema".add_column('signup_requests', 'business_state',    16, 'string', true, false, false, 'the state or providence of the business', '1.69', null);
select "schema".add_column('signup_requests', 'business_country',  17, 'country', false, false, false, 'the two-character country code of the business', '1.23', '1.68');
select "schema".add_column('signup_requests', 'business_country',  18, 'string', false, false, false, 'the two-character country code of the business', '1.69', null);
select "schema".add_column('signup_requests', 'business_zip',      19, 'zip', true, false, false, 'the zip code of the business', '1.23', '1.68');
select "schema".add_column('signup_requests', 'business_zip',      20, 'string', true, false, false, 'the zip code of the business', '1.69', null);
select "schema".add_column('signup_requests', 'ba_name',           21, 'string', false, false, false, 'the administrator''s name', '1.23', null);
select "schema".add_column('signup_requests', 'ba_title',          22, 'string', true, false, false, 'the administrator''s title', '1.23', null);
select "schema".add_column('signup_requests', 'ba_work_phone',     23, 'string', false, false, false, 'the administrator''s work phone', '1.23', '1.68');
select "schema".add_column('signup_requests', 'ba_work_phone',     24, 'string', false, false, false, 'the administrator''s work phone', '1.69', null);
select "schema".add_column('signup_requests', 'ba_cell_phone',     25, 'string', true, false, false, 'the administrator''s cell phone', '1.23', '1.68');
select "schema".add_column('signup_requests', 'ba_cell_phone',     26, 'string', true, false, false, 'the administrator''s cell phone', '1.69', null);
select "schema".add_column('signup_requests', 'ba_home_phone',     27, 'string', true, false, false, 'the administrator''s home phone', '1.23', '1.68');
select "schema".add_column('signup_requests', 'ba_home_phone',     28, 'string', true, false, false, 'the administrator''s home phone', '1.69', null);
select "schema".add_column('signup_requests', 'ba_fax',            29, 'string', true, false, false, 'the administrator''s fax number', '1.23', '1.68');
select "schema".add_column('signup_requests', 'ba_fax',            30, 'string', true, false, false, 'the administrator''s fax number', '1.69', null);
select "schema".add_column('signup_requests', 'ba_email',          31, 'email', false, false, false, 'the administrator''s email address', '1.23', null);
select "schema".add_column('signup_requests', 'ba_address1',       32, 'string', true, false, false, 'the street address of the administrator', '1.23', null);
select "schema".add_column('signup_requests', 'ba_address2',       33, 'string', true, false, false, 'the street address of the administrator', '1.23', null);
select "schema".add_column('signup_requests', 'ba_city',           34, 'city', true, false, false, 'the city of the administrator', '1.23', '1.68');
select "schema".add_column('signup_requests', 'ba_city',           35, 'string', true, false, false, 'the city of the administrator', '1.69', null);
select "schema".add_column('signup_requests', 'ba_state',          36, 'state', true, false, false, 'the state or providence of the administrator', '1.23', '1.68');
select "schema".add_column('signup_requests', 'ba_state',          37, 'string', true, false, false, 'the state or providence of the administrator', '1.69', null);
select "schema".add_column('signup_requests', 'ba_country',        38, 'country', true, false, false, 'the two-character country code of the administrator', '1.23', '1.68');
select "schema".add_column('signup_requests', 'ba_country',        39, 'string', true, false, false, 'the two-character country code of the administrator', '1.69', null);
select "schema".add_column('signup_requests', 'ba_zip',            40, 'zip', true, false, false, 'the zip code of the administrator', '1.23', '1.68');
select "schema".add_column('signup_requests', 'ba_zip',            41, 'string', true, false, false, 'the zip code of the administrator', '1.69', null);
select "schema".add_column('signup_requests', 'ba_username',       42, 'username', false, false, false, 'the username of the administrator', '1.23', null);
select "schema".add_column('signup_requests', 'billing_contact',   43, 'string', false, false, false, 'the name of the billing contact', '1.23', null);
select "schema".add_column('signup_requests', 'billing_email',        44, 'email', false, false, false, 'the email address of the billing contact', '1.23', null);
select "schema".add_column('signup_requests', 'billing_use_monthly',  45, 'boolean', false, false, false, 'if true, the credit_card will be used every month automatically', '1.23', null);
select "schema".add_column('signup_requests', 'billing_pay_one_year', 46, 'boolean', false, false, false, 'if true, one-year in advance will be charged to the credit_card and they will receive a credit for a free month', '1.23', null);
select "schema".add_column('signup_requests', 'encrypted_data',       47, 'string', false, false, false, 'the credit card details and password are stored encrypted', '1.23', null);
select "schema".add_column('signup_requests', 'encryption_from',      48, 'fkey', false, false, false, 'the from that was used for encryption', '1.31', null);
select "schema".add_column('signup_requests', 'encryption_key',       49, 'fkey', false, false, false, 'the recipient that was used for encryption', '1.23', '1.30');
select "schema".add_column('signup_requests', 'encryption_recipient', 50, 'fkey', false, false, false, 'the recipient that was used for encryption', '1.31', null);
select "schema".add_column('signup_requests', 'completed_by',         51, 'username', true, false, false, 'the username of the person who completed this sign-up request', '1.23', null);
select "schema".add_column('signup_requests', 'completed_time',       52, 'time', true, false, false, 'the time this request was completed', '1.23', null);

\echo spam_email_messages
select "schema".add_column('spam_email_messages', 'pkey', 0, 'pkey', false, true, false, 'a generated unique key', '1.0a100', null);
select "schema".add_column('spam_email_messages', 'email_relay', 1, 'fkey', false, false, false, 'the relay that has been denied', '1.0a100', null);
select "schema".add_column('spam_email_messages', 'time', 2, 'time', false, false, false, 'the time the message was added', '1.0a100', null);
select "schema".add_column('spam_email_messages', 'message', 3, 'string', false, false, false, 'the message contents', '1.0a100', null);

\echo ssl_certificate_names
select "schema".add_column('ssl_certificate_names', 'pkey',            0, 'pkey',        false,  true, false, 'a generated primary key',                                      '1.81.10', null);
select "schema".add_column('ssl_certificate_names', 'ssl_certificate', 1, 'fkey',        false, false, false, 'the pkey of the SSL certificate this name is on',              '1.81.10', null);
select "schema".add_column('ssl_certificate_names', 'is_common_name',  2, 'boolean',     false, false, false, 'indicates this is the Common Name (CN) or a Subject Alt Name', '1.81.10', null);
select "schema".add_column('ssl_certificate_names', 'is_wildcard',     3, 'boolean',     false, false, false, 'is a *.(domain) wildcard certificate',                         '1.81.10', null);
select "schema".add_column('ssl_certificate_names', 'domain',          4, 'domain_name', false, false, false, 'the domain name',                                              '1.81.10', null);

\echo ssl_certificate_other_uses
select "schema".add_column('ssl_certificate_other_uses', 'pkey',            0, 'pkey',   false,  true, false, 'a generated primary key',                                                 '1.81.16', null);
select "schema".add_column('ssl_certificate_other_uses', 'ssl_certificate', 1, 'fkey',   false, false, false, 'the pkey of the SSL certificate this name is on',                         '1.81.16', null);
select "schema".add_column('ssl_certificate_other_uses', 'sort_order',      2, 'short',  false, false, false, 'the per-certificate unique sort ordering',                                '1.81.16', null);
select "schema".add_column('ssl_certificate_other_uses', 'count',           3, 'int',    false, false, false, 'the number of times this other resource uses the certificate',            '1.81.16', null);
select "schema".add_column('ssl_certificate_other_uses', 'display',         4, 'string', false, false, false, 'a short display value, which will often follow the count when displayed', '1.81.16', null);

\echo ssl_certificates
select "schema".add_column('ssl_certificates', 'pkey',         0, 'pkey',  false,  true, false, 'a generated primary key',                                    '1.81.10', null);
select "schema".add_column('ssl_certificates', 'ao_server',    1, 'fkey',  false, false, false, 'the pkey of the server the SSL certificate is on',           '1.81.10', null);
select "schema".add_column('ssl_certificates', 'package',      2, 'fkey',  false, false, false, 'the package that owns the SSL certificate',                  '1.81.10', null);
select "schema".add_column('ssl_certificates', 'key_file',     3, 'path',  false, false, false, 'the file holding the private key',                           '1.81.10', null);
select "schema".add_column('ssl_certificates', 'csr_file',     4, 'path',   true, false, false, 'the file holding the CSR',                                   '1.81.10', null);
select "schema".add_column('ssl_certificates', 'cert_file',    5, 'path',  false, false, false, 'the file holding the public key',                            '1.81.10', null);
select "schema".add_column('ssl_certificates', 'chain_file',   6, 'path',   true, false, false, 'the file holding the CA chain',                              '1.81.10', null);
select "schema".add_column('ssl_certificates', 'certbot_name', 7, 'string', true, false, false, 'the name of the certbot-managed Let''s Encrypt certificate', '1.81.10', null);

\echo system_email_aliases
select "schema".add_column('system_email_aliases', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('system_email_aliases', 'ao_server', 1, 'fkey', false, false, false, 'the pkey of the server the entry is on', '1.0a100', null);
select "schema".add_column('system_email_aliases', 'address', 2, 'string', false, false, false, 'the address (username only) to match', '1.0a100', null);
select "schema".add_column('system_email_aliases', 'destination', 3, 'string', false, false, false, 'the destination, as found in /etc/aliases', '1.0a100', null);

\echo technologies
select "schema".add_column('technologies', 'pkey', 0, 'pkey', false, true, true, 'the unique identifier', '1.4', null);
select "schema".add_column('technologies', 'name', 1, 'string', false, false, true, 'the name of the package', '1.0a100', null);
select "schema".add_column('technologies', 'class', 2, 'string', false, false, true, 'the name of the group this package belongs to', '1.0a100', null);

\echo technology_classes
select "schema".add_column('technology_classes', 'name', 0, 'string', false, true, true, 'the name of the class', '1.0a100', null);
select "schema".add_column('technology_classes', 'description', 1, 'string', false, false, true, 'a description of the class', '1.0a100', null);

\echo technology_names
select "schema".add_column('technology_names', 'name', 0, 'string', false, true, true, 'the name of the package', '1.0a100', null);
select "schema".add_column('technology_names', 'image_filename', 1, 'string', true, false, true, 'the name of the file containing the image', '1.0a100', null);
select "schema".add_column('technology_names', 'image_width', 2, 'int', true, false, true, 'the width of the image', '1.0a100', null);
select "schema".add_column('technology_names', 'image_height', 3, 'int', true, false, true, 'the height of the image', '1.0a100', null);
select "schema".add_column('technology_names', 'image_alt', 4, 'string', true, false, true, 'the alt attribute of the image', '1.0a100', null);
select "schema".add_column('technology_names', 'home_page_url', 5, 'url', true, false, true, 'the URL of the technology home page', '1.0a100', null);

\echo technology_versions
select "schema".add_column('technology_versions', 'pkey', 0, 'pkey', false, true, true, 'a generated unique key', '1.0a100', null);
select "schema".add_column('technology_versions', 'name', 1, 'string', false, false, true, 'the name of the software package', '1.0a100', null);
select "schema".add_column('technology_versions', 'version', 2, 'string', false, false, true, 'the version number of the package in #.##.##-## format', '1.0a100', null);
select "schema".add_column('technology_versions', 'updated', 3, 'time', false, false, true, 'the time this package was last updated', '1.0a100', null);
select "schema".add_column('technology_versions', 'owner', 4, 'username', false, false, false, 'the business_administrator who is responsible for maintaining this package', '1.0a100', null);
select "schema".add_column('technology_versions', 'operating_system_version', 5, 'fkey', true, false, true, 'the version of the OS that this packages is installed', '1.0a108', null);
select "schema".add_column('technology_versions', 'disable_time', 6, 'time', true, false, true, 'the time this version is no longer supported', '1.78', null);
select "schema".add_column('technology_versions', 'disable_reason', 7, 'string', true, false, true, 'the reason this version is no longer supported', '1.78', null);

\echo ticket_action_types
select "schema".add_column('ticket_action_types', 'type', 0, 'string', false, true, true, '', '1.44', null);
select "schema".add_column('ticket_action_types', 'visible_admin_only', 1, 'boolean', false, false, true, '', '1.44', null);

\echo ticket_actions
select "schema".add_column('ticket_actions', 'pkey',             0, 'pkey', false, true, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'ticket',           1, 'fkey', false, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'administrator',    2, 'username', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'time',             3, 'time', false, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'action_type',      4, 'string', false, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'old_accounting',   5, 'string', true, false, false, '', '1.44', '1.68');
select "schema".add_column('ticket_actions', 'old_accounting',   6, 'accounting', true, false, false, '', '1.69', null);
select "schema".add_column('ticket_actions', 'new_accounting',   7, 'string', true, false, false, '', '1.44', '1.68');
select "schema".add_column('ticket_actions', 'new_accounting',   8, 'accounting', true, false, false, '', '1.69', null);
select "schema".add_column('ticket_actions', 'old_priority',     9, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'new_priority',    10, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'old_type',        11, 'string', true, false, false, '', '1.49', null);
select "schema".add_column('ticket_actions', 'new_type',        12, 'string', true, false, false, '', '1.49', null);
select "schema".add_column('ticket_actions', 'old_status',      13, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'new_status',      14, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'old_assigned_to', 15, 'string', true, false, false, '', '1.44', '1.80');
select "schema".add_column('ticket_actions', 'old_assigned_to', 16, 'username', true, false, false, '', '1.80.0', null);
select "schema".add_column('ticket_actions', 'new_assigned_to', 17, 'string', true, false, false, '', '1.44', '1.80');
select "schema".add_column('ticket_actions', 'new_assigned_to', 18, 'username', true, false, false, '', '1.80.0', null);
select "schema".add_column('ticket_actions', 'old_category',    19, 'fkey', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'new_category',    20, 'fkey', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'old_value',       21, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'new_value',       22, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'from_address',    23, 'email', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'summary',         24, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'details',         25, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'raw_email',       26, 'string', true, false, false, '', '1.44', null);

\echo ticket_assignments
select "schema".add_column('ticket_assignments', 'pkey', 0, 'pkey', false, true, false, '', '1.44', null);
select "schema".add_column('ticket_assignments', 'ticket', 1, 'fkey', false, false, false, '', '1.44', null);
select "schema".add_column('ticket_assignments', 'reseller', 2, 'accounting', false, false, false, '', '1.44', null);
select "schema".add_column('ticket_assignments', 'administrator', 3, 'username', false, false, false, '', '1.44', null);

\echo ticket_brand_categories
select "schema".add_column('ticket_brand_categories', 'pkey', 0, 'pkey', false, true, false, '', '1.44', null);
select "schema".add_column('ticket_brand_categories', 'brand', 1, 'accounting', false, false, false, '', '1.44', null);
select "schema".add_column('ticket_brand_categories', 'category', 2, 'fkey', false, false, false, '', '1.44', null);
select "schema".add_column('ticket_brand_categories', 'enabled', 3, 'boolean', false, false, false, '', '1.44', null);

\echo ticket_categories
select "schema".add_column('ticket_categories', 'pkey', 0, 'pkey', false, true, false, '', '1.44', null);
select "schema".add_column('ticket_categories', 'parent', 1, 'fkey', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_categories', 'name', 2, 'string', false, false, false, '', '1.44', null);

\echo ticket_priorities
select "schema".add_column('ticket_priorities', 'priority', 0, 'string', false, true, true, '', '1.0a100', null);

\echo ticket_stati
select "schema".add_column('ticket_stati', 'status', 0, 'string', false, true, true, '', '1.0a100', null);
select "schema".add_column('ticket_stati', 'description', 1, 'string', false, false, true, '', '1.0a100', '1.43');
select "schema".add_column('ticket_stati', 'sort_order', 2, 'short', false, true, true, '', '1.44', null);

\echo ticket_types
select "schema".add_column('ticket_types', 'type', 0, 'string', false, true, true, '', '1.0a100', null);
select "schema".add_column('ticket_types', 'description', 1, 'string', false, false, true, '', '1.0a100', '1.43');
select "schema".add_column('ticket_types', 'client_view', 2, 'boolean', false, false, true, '', '1.0a100', '1.43');

\echo tickets
select "schema".add_column('tickets', 'pkey', 0, 'pkey', false, true, false, '', '1.0a100', null);
select "schema".add_column('tickets', 'brand', 1, 'accounting', false, false, false, '', '1.46', null);
select "schema".add_column('tickets', 'reseller', 2, 'accounting', false, false, false, '', '1.44', null);
select "schema".add_column('tickets', 'package', 3, 'package', false, false, false, '', '1.0a100', '1.0a125');
select "schema".add_column('tickets', 'accounting', 4, 'accounting', true, false, false, '', '1.0a126', null);
select "schema".add_column('tickets', 'language', 5, 'string', false, false, false, '', '1.44', null);
select "schema".add_column('tickets', 'administrator', 6, 'username', false, false, false, '', '1.0a100', '1.0a125');
select "schema".add_column('tickets', 'created_by', 7, 'username', true, false, false, '', '1.0a126', null);
select "schema".add_column('tickets', 'category', 8, 'fkey', true, false, false, '', '1.44', null);
select "schema".add_column('tickets', 'ticket_type', 9, 'string', false, false, false, '', '1.0a100', null);
select "schema".add_column('tickets', 'from_address', 10, 'email', true, false, false, '', '1.44', null);
select "schema".add_column('tickets', 'summary', 11, 'string', false, false, false, '', '1.44', null);
select "schema".add_column('tickets', 'details', 12, 'string', false, false, false, '', '1.0a100', '1.43');
select "schema".add_column('tickets', 'details', 13, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('tickets', 'raw_email', 14, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('tickets', 'open_date', 15, 'time', false, false, false, '', '1.0a100', null);
select "schema".add_column('tickets', 'deadline', 16, 'time', true, false, false, '', '1.0a100', '1.43');
select "schema".add_column('tickets', 'close_date', 17, 'time', true, false, false, '', '1.0a100', '1.43');
select "schema".add_column('tickets', 'closed_by', 18, 'username', true, false, false, '', '1.0a100', '1.43');
select "schema".add_column('tickets', 'client_priority', 19, 'string', false, false, false, '', '1.0a100', null);
select "schema".add_column('tickets', 'admin_priority', 20, 'string', false, false, false, '', '1.0a100', '1.9');
select "schema".add_column('tickets', 'admin_priority', 21, 'string', true, false, false, '', '1.10', null);
select "schema".add_column('tickets', 'technology', 22, 'string', true, false, false, '', '1.0a100', '1.43');
select "schema".add_column('tickets', 'status', 23, 'string', false, false, false, '', '1.0a100', null);
select "schema".add_column('tickets', 'status_timeout', 24, 'time', true, false, false, '', '1.69', null);
select "schema".add_column('tickets', 'assigned_to', 25, 'string', true, false, false, '', '1.0a125', '1.43');
select "schema".add_column('tickets', 'contact_emails', 26, 'string', false, false, false, '', '1.0a125', null);
select "schema".add_column('tickets', 'contact_phone_numbers', 27, 'string', false, false, false, '', '1.0a125', null);
select "schema".add_column('tickets', 'internal_notes', 28, 'string', false, false, false, '', '1.69', null);

\echo time_zones
select "schema".add_column('time_zones', 'name', 0, 'string', false, true, true, 'The unique name of this time zone', '1.2', null);

\echo transaction_types
select "schema".add_column('transaction_types', 'name', 0, 'string', false, true, true, 'the name of the type', '1.0a123', null);
select "schema".add_column('transaction_types', 'display', 1, 'string', false, false, true, 'the short display value', '1.0a123', '1.60');
select "schema".add_column('transaction_types', 'description', 2, 'string', false, false, true, 'a description of the type of payment', '1.0a123', '1.60');
select "schema".add_column('transaction_types', 'unit', 3, 'string', false, false, true, 'the unit of the transaction type', '1.0a123', '1.60');
select "schema".add_column('transaction_types', 'is_credit', 4, 'boolean', false, false, true, 'indicates that this type of transaction represents payment or credit', '1.0a123', null);

\echo transactions
select "schema".add_column('transactions', 'time', 0, 'time', false, false, false, 'the time the transaction occured', '1.0a100', null);
select "schema".add_column('transactions', 'transid', 1, 'int', false, true, false, 'the unique identifier for this transaction', '1.0a100', '1.68');
select "schema".add_column('transactions', 'transid', 2, 'pkey', false, true, false, 'the unique identifier for this transaction', '1.69', null);
select "schema".add_column('transactions', 'accounting', 3, 'accounting', false, false, false, 'the identifier for the business (see businesses)', '1.0a100', null);
select "schema".add_column('transactions', 'source_accounting', 4, 'accounting', false, false, false, 'the source of the charge to this account', '1.0a100', null);
select "schema".add_column('transactions', 'username', 5, 'username', false, false, false, 'the identifier for the admin involved in the transaction (see business_administrators)', '1.0a100', null);
select "schema".add_column('transactions', 'type', 6, 'string', false, false, false, 'the type of transaction', '1.0a100', null);
select "schema".add_column('transactions', 'description', 7, 'string', false, false, false, 'description of the transaction', '1.0a100', null);
select "schema".add_column('transactions', 'quantity', 8, 'decimal_3', false, false, false, 'the number of times to charge the account', '1.0a100', null);
select "schema".add_column('transactions', 'rate', 9, 'decimal_2', false, false, false, 'the amount per unit of quantity', '1.0a100', null);
select "schema".add_column(
    'transactions',
    'payment_type',
    10,
    'string',
    true,
    false,
    false,
    'the type of payment made<br>
check - check, check number will be in payment_info<br>
money_order - money order<br>
visa - visa card, last four in payment_info<br>
mastercard - mastercard, last four in payment_info<br>
amex - amex card, last four in payment_info<br>
discover - discover card, last four in payment_info',
    '1.0a100',
    null
);
select "schema".add_column('transactions', 'payment_info', 11, 'string', true, false, false, 'the payment info, such as last four of credit card number of check number', '1.0a100', null);
select "schema".add_column('transactions', 'merchant_account', 12, 'string', true, false, false, 'the merchant account that the payment was processed through', '1.0a100', '1.28');
select "schema".add_column('transactions', 'processor', 13, 'string', true, false, false, 'the credit card processor that handled the payment', '1.29', null);
select "schema".add_column('transactions', 'credit_card_transaction', 14, 'fkey', true, false, false, 'the credit card transaction for this transaction', '1.29', null);
select "schema".add_column('transactions', 'apr_num', 15, 'int', true, false, false, 'the approval number for given transaction', '1.0a100', '1.0a127');
select "schema".add_column('transactions', 'apr_num', 16, 'string', true, false, false, 'the approval number for given transaction', '1.0a128', '1.28');
select "schema".add_column(
    'transactions',
    'payment_confirmed',
    17,
    'string',
    false,
    false,
    false,
    '''Y'' if the payment is confirmed<br>
''W'' if waiting confirmation<br>
''N'' if confirmation failed',
    '1.0a100',
    null
);

\echo us_states
select "schema".add_column('us_states', 'code', 0, 'string', false, true, true, 'the two-character code for the state', '1.0a100', null);
select "schema".add_column('us_states', 'name', 1, 'string', false, false, true, 'the name of the state', '1.0a100', null);

\echo usernames
select "schema".add_column('usernames', 'username', 0, 'username', false, true, false, 'the unique username', '1.0a100', null);
select "schema".add_column('usernames', 'package', 1, 'package', false, false, false, 'the package name that this user is part of', '1.0a100', '1.80');
select "schema".add_column('usernames', 'package', 2, 'accounting', false, false, false, 'the package name that this user is part of', '1.80.0', null);
select "schema".add_column('usernames', 'disable_log', 3, 'fkey', true, false, false, 'indicates that the username is disabled', '1.0a100', null);

\echo virtual_disks
select "schema".add_column('virtual_disks', 'pkey', 0, 'pkey', false, true, false, 'a generated unique ID', '1.36', null);
select "schema".add_column('virtual_disks', 'virtual_server', 1, 'fkey', false, false, false, 'the virtual server this disk belongs to', '1.36', null);
select "schema".add_column('virtual_disks', 'device', 2, 'string', false, false, false, 'the per-virtual-server unique device, such as xvda or xvdb', '1.36', null);
select "schema".add_column('virtual_disks', 'minimum_raid_type', 3, 'string', true, false, false, 'the minimum RAID type for the primary physical server', '1.41', '1.41');
select "schema".add_column('virtual_disks', 'primary_minimum_raid_type', 4, 'string', true, false, false, 'the minimum RAID type for the primary physical server', '1.36', '1.40');
select "schema".add_column('virtual_disks', 'secondary_minimum_raid_type', 5, 'string', true, false, false, 'the minimum RAID type for the secondary physical server', '1.36', '1.40');
select "schema".add_column('virtual_disks', 'minimum_disk_type', 6, 'string', true, false, false, 'the minimum disk type for the primary physical server', '1.41', '1.41');
select "schema".add_column('virtual_disks', 'primary_minimum_disk_type', 7, 'string', true, false, false, 'the minimum disk type for the primary physical server', '1.36', '1.40');
select "schema".add_column('virtual_disks', 'secondary_minimum_disk_type', 8, 'string', true, false, false, 'the minimum disk type for the secondary physical server', '1.36', '1.40');
select "schema".add_column('virtual_disks', 'minimum_disk_speed', 9, 'int', true, false, false, 'the minimum disk speed in RPM for the primary physical server', '1.41', null);
select "schema".add_column('virtual_disks', 'minimum_disk_speed_target', 10, 'int', true, false, false, 'the minimum disk speed in RPM for the primary physical server', '1.43', null);
select "schema".add_column('virtual_disks', 'primary_minimum_disk_speed', 11, 'int', true, false, false, 'the minimum disk speed in RPM for the primary physical server', '1.36', '1.40');
select "schema".add_column('virtual_disks', 'secondary_minimum_disk_speed', 12, 'int', true, false, false, 'the minimum disk speed in RPM for the secondary physical server', '1.36', '1.40');
select "schema".add_column('virtual_disks', 'extents', 13, 'int', false, false, false, 'the total number of LVM extents for this device', '1.36', null);
select "schema".add_column('virtual_disks', 'weight', 14, 'short', false, false, false, 'the amount of primary disk I/O allocated to this virtual device on a scale of 1-1024', '1.41', null);
select "schema".add_column('virtual_disks', 'weight_target', 15, 'short', false, false, false, 'the amount of primary disk I/O allocated to this virtual device on a scale of 1-1024', '1.43', null);
select "schema".add_column('virtual_disks', 'primary_weight', 16, 'short', false, false, false, 'the amount of primary disk I/O allocated to this virtual device on a scale of 1-1024', '1.36', '1.40');
select "schema".add_column('virtual_disks', 'secondary_weight', 17, 'short', false, false, false, 'the amount of secondary disk I/O allocated to this virtual device on a scale of 1-1024', '1.36', '1.40');
select "schema".add_column('virtual_disks', 'primary_physical_volumes_locked', 18, 'boolean', false, false, false, 'indicates this device is locked and should not be moved by automated means', '1.36', null);
select "schema".add_column('virtual_disks', 'secondary_physical_volumes_locked', 19, 'boolean', false, false, false, 'indicates this device is locked and should not be moved by automated means', '1.36', null);
select "schema".add_column('virtual_disks', 'verify_day_of_week', 20, 'int', false, false, false, 'the day of the week verification will begin', '1.72', null);
select "schema".add_column('virtual_disks', 'verify_hour_of_day', 21, 'int', false, false, false, 'the hour of day verification will begin', '1.72', null);

\echo virtual_servers
select "schema".add_column('virtual_servers', 'server', 0, 'fkey', false, true, false, 'the server that is virtualized', '1.36', null);
select "schema".add_column('virtual_servers', 'primary_ram', 1, 'int', false, false, false, 'the amount of RAM required in primary mode in megabytes', '1.36', null);
select "schema".add_column('virtual_servers', 'primary_ram_target', 2, 'int', false, false, false, 'the amount of RAM required in primary mode in megabytes', '1.43', null);
select "schema".add_column('virtual_servers', 'secondary_ram', 3, 'int', true, false, false, 'the amount of RAM required in primary mode in megabytes or 0 if secondary not required', '1.36', null);
select "schema".add_column('virtual_servers', 'secondary_ram_target', 4, 'int', true, false, false, 'the amount of RAM required in primary mode in megabytes or 0 if secondary not required', '1.43', null);
select "schema".add_column('virtual_servers', 'minimum_processor_type', 5, 'string', true, false, false, 'the minimum processor type', '1.41', null);
select "schema".add_column('virtual_servers', 'primary_minimum_processor_type', 6, 'string', true, false, false, 'the minimum processor type in primary mode', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'secondary_minimum_processor_type', 7, 'string', true, false, false, 'the minimum processor type in secondary mode', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'minimum_processor_architecture', 8, 'string', false, false, false, 'the minimum processor architecture, compatible architectures may be substituted', '1.36', null);
select "schema".add_column('virtual_servers', 'minimum_processor_speed', 9, 'int', true, false, false, 'the minimum processor speed in MHz', '1.41', null);
select "schema".add_column('virtual_servers', 'minimum_processor_speed_target', 10, 'int', true, false, false, 'the minimum processor speed in MHz', '1.43', null);
select "schema".add_column('virtual_servers', 'primary_minimum_processor_speed', 11, 'int', true, false, false, 'the minimum processor speed in MHz for primary mode', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'secondary_minimum_processor_speed', 12, 'int', true, false, false, 'the minimum processor speed in MHz for secondary mode', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'processor_cores', 13, 'short', false, false, false, 'the number of processor cores', '1.41', null);
select "schema".add_column('virtual_servers', 'processor_cores_target', 14, 'short', false, false, false, 'the number of processor cores', '1.43', null);
select "schema".add_column('virtual_servers', 'primary_processor_cores', 15, 'short', false, false, false, 'the number of processor cores used in primary mode', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'secondary_processor_cores', 16, 'short', true, false, false, 'the number of processor cores used in secondary mode', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'processor_weight', 17, 'short', false, false, false, 'the processor allocation weight on a scale of 1-1024', '1.41', null);
select "schema".add_column('virtual_servers', 'processor_weight_target', 18, 'short', false, false, false, 'the processor allocation weight on a scale of 1-1024', '1.43', null);
select "schema".add_column('virtual_servers', 'primary_processor_weight', 19, 'short', false, false, false, 'the processor allocation weight in primary mode on a scale of 1-1024', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'secondary_processor_weight', 20, 'short', true, false, false, 'the processor allocation weight in secondary mode on a scale of 1-1024', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'primary_physical_server', 21, 'fkey', false, false, false, 'the physical server that provides the primary mode resources', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'primary_physical_server_locked', 22, 'boolean', false, false, false, 'indicates the primary server is locked and should not be moved by automated means', '1.36', null);
select "schema".add_column('virtual_servers', 'secondary_physical_server', 23, 'fkey', false, false, false, 'the physical server that provides the secondary mode resources', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'secondary_physical_server_locked', 24, 'boolean', false, false, false, 'indicates the secondary server is locked and should not be moved by automated means', '1.36', null);
select "schema".add_column('virtual_servers', 'requires_hvm', 25, 'boolean', false, false, false, 'indicates requires full hardware virtualization', '1.37', null);
select "schema".add_column('virtual_servers', 'vnc_password', 26, 'string', false, true, false, 'the password for VNC console access or null to disable VNC access', '1.51', null);

\echo whois_history
select "schema".add_column('whois_history', 'pkey', 0, 'pkey', false, true, false, 'a unique, generated identifier', '1.20', null);
select "schema".add_column('whois_history', 'time', 1, 'time', false, false, false, 'the time the whois query was performed', '1.20', null);
select "schema".add_column('whois_history', 'accounting', 2, 'accounting', false, false, false, 'the identifier for the business (see businesses)', '1.20', null);
select "schema".add_column('whois_history', 'zone', 3, 'zone', false, false, false, 'the top level domain (zone) that was queried', '1.20', null);
select "schema".add_column('whois_history', 'whois_output', 4, 'string', false, false, false, 'the output from the whois lookup', '1.20', null);
