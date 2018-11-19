\echo action_types
select "schema".add_column('action_types', 'type', 0, 'string', false, true, true, '', '1.0a100', '1.43');
select "schema".add_column('action_types', 'description', 1, 'string', true, false, true, '', '1.0a100', '1.43');

\echo actions
select "schema".add_column('actions', 'pkey', 0, 'pkey', false, true, false, '', '1.0a100', '1.43');
select "schema".add_column('actions', 'ticket_id', 1, 'fkey', true, false, false, '', '1.0a100', '1.43');
select "schema".add_column('actions', 'administrator', 2, 'username', false, false, false, '', '1.0a100', '1.43');
select "schema".add_column('actions', 'time', 3, 'time', false, false, false, '', '1.0a100', '1.43');
select "schema".add_column('actions', 'action_type', 4, 'string', false, false, false, '', '1.0a100', '1.43');
select "schema".add_column('actions', 'old_value', 5, 'string', true, false, false, '', '1.0a100', '1.43');
select "schema".add_column('actions', 'comments', 6, 'string', true, false, false, '', '1.0a100', '1.43');

\echo ao_server_daemon_hosts
select "schema".add_column('ao_server_daemon_hosts', 'pkey', 0, 'pkey', false, true, false, 'a generated unique primary key', '1.0a100', null);
select "schema".add_column('ao_server_daemon_hosts', 'ao_server', 1, 'fkey', false, false, false, 'the pkey of the ao_server', '1.0a100', null);
select "schema".add_column('ao_server_daemon_hosts', 'host', 2, 'ip_address', false, false, false, 'the hostname or IP address that is allowed to connect', '1.0a100', '1.80');
select "schema".add_column('ao_server_daemon_hosts', 'host', 3, 'hostname', false, false, false, 'the hostname or IP address that is allowed to connect', '1.80.0', null);

\echo ao_servers
select "schema".add_column('ao_servers', 'server', 0, 'fkey', false, true, false, 'a reference to servers', '1.0a100', null);
select "schema".add_column('ao_servers', 'num_cpu', 1, 'int', false, false, false, 'the number of CPUs in the machine', '1.0a100', '1.30');
select "schema".add_column('ao_servers', 'cpu_speed', 2, 'int', false, false, false, 'the speed of each CPU in MHz', '1.0a100', '1.30');
select "schema".add_column('ao_servers', 'ram', 3, 'int', false, false, false, 'the amount of RAM in megabytes', '1.0a100', '1.30');
select "schema".add_column('ao_servers', 'rack', 4, 'int', true, false, false, 'the rack space used in units of 1U', '1.0a100', '1.30');
select "schema".add_column('ao_servers', 'disk', 5, 'int', false, false, false, 'the total amount of physical disk space in gigabytes', '1.0a100', '1.30');
select "schema".add_column('ao_servers', 'wildcard_https', 6, 'string', true, false, false, 'the domain for wildcard certificates', '1.0a100', '1.30');
select "schema".add_column('ao_servers', 'is_interbase', 7, 'boolean', false, false, false, 'if is an InterBase server', '1.0a100', '1.30');
select "schema".add_column('ao_servers', 'is_dns', 8, 'boolean', false, false, false, 'if is a DNS server', '1.0a100', '1.30');
select "schema".add_column('ao_servers', 'is_mysql', 9, 'boolean', false, false, false, 'if is a MySQL server', '1.0a100', '1.3');
select "schema".add_column('ao_servers', 'is_router', 10, 'boolean', false, false, false, 'if is a router for networking', '1.0a100', '1.30');
select "schema".add_column('ao_servers', 'iptables_name', 11, 'string', false, true, false, 'a unique name for use as a iptables ruleset name', '1.0a100', '1.30');
select "schema".add_column('ao_servers', 'hostname', 12, 'hostname', false, true, false, 'the unique hostname of the server', '1.31', '1.68');
select "schema".add_column('ao_servers', 'hostname', 13, 'domain_name', false, true, false, 'the unique hostname of the server', '1.69', null);
select "schema".add_column('ao_servers', 'daemon_bind', 14, 'fkey', true, false, false, 'the network bind info for the AOServ Daemon', '1.0a100', null);
select "schema".add_column(
    'ao_servers',
    'daemon_key',
    15,
    'string',
    false,
    false,
    false,
'the crypt''ed key used to connect to this server,
this info MUST be filtered because it grants
complete control over the server.',
    '1.0a100',
    '1.68'
);
select "schema".add_column(
    'ao_servers',
    'daemon_key',
    16,
    'hashed_password',
    false,
    false,
    false,
'the hashed key used to connect to this server,
this info MUST be filtered because it grants
complete control over the server.',
    '1.69',
    null
);
select "schema".add_column('ao_servers', 'pool_size', 17, 'int', false, false, false, 'the recommended connection pool size for the AOServ Master', '1.0a100', null);
select "schema".add_column('ao_servers', 'distro_hour', 18, 'int', false, false, false, 'the hour the distribution will occur, in server time zone', '1.0a100', null);
select "schema".add_column('ao_servers', 'last_distro_time', 19, 'time', true, false, false, 'the time the last distro check was started', '1.0a100', null);
select "schema".add_column('ao_servers', 'failover_server', 20, 'fkey', true, false, false, 'the server that is currently running this server', '1.0a100', null);
select "schema".add_column('ao_servers', 'server_report_delay', 21, 'int', false, false, false, 'the number of milliseconds between system resource polls', '1.0a100', '1.30');
select "schema".add_column('ao_servers', 'server_report_interval', 22, 'int', false, false, false, 'the number of polls between database update', '1.0a100', '1.30');
select "schema".add_column('ao_servers', 'is_qmail', 23, 'boolean', false, false, false, 'indicates that this server runs qmail, not sendmail', '1.0a100', '1.30');
select "schema".add_column('ao_servers', 'daemon_device_id', 24, 'string', false, false, false, 'the device name the master connects to', '1.0a100', null);
select "schema".add_column('ao_servers', 'xeroscape_name', 25, 'string', true, true, false, '', '1.0a100', '1.30');
select "schema".add_column('ao_servers', 'value', 26, 'decimal_2', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('ao_servers', 'monitoring_enabled', 27, 'boolean', false, false, false, 'indicates that this server should be monitored', '1.0a100', '1.30');
select "schema".add_column('ao_servers', 'emailmon_password', 28, 'string', false, false, false, 'the password used for email monitoring', '1.0a104', '1.0a107');
select "schema".add_column('ao_servers', 'emailmon_password', 29, 'string', true, false, false, 'the password used for email monitoring', '1.0a108', '1.30');
select "schema".add_column('ao_servers', 'ftpmon_password', 30, 'string', false, false, false, 'the password used for FTP monitoring', '1.0a104', '1.0a107');
select "schema".add_column('ao_servers', 'ftpmon_password', 311, 'string', true, false, false, 'the password used for FTP monitoring', '1.0a108', '1.30');
select "schema".add_column('ao_servers', 'daemon_connect_bind', 32, 'fkey', true, false, false, 'the bind to connect to', '1.0a119', null);
select "schema".add_column('ao_servers', 'time_zone', 33, 'string', true, false, false, 'the time zone setting for the server', '1.2', null);
select "schema".add_column('ao_servers', 'jilter_bind', 34, 'fkey', true, false, false, 'the bind that sendmail uses to connect to jilter', '1.7', null);
select "schema".add_column('ao_servers', 'restrict_outbound_email', 35, 'boolean', false, false, false, 'controls if outbound email may only come from address hosted on this machine', '1.8', null);
select "schema".add_column('ao_servers', 'daemon_connect_address', 36, 'string', true, false, false, 'provides a specific address to use for connecting to AOServDaemon', '1.11', '1.68');
select "schema".add_column('ao_servers', 'daemon_connect_address', 37, 'hostname', true, false, false, 'provides a specific hostname or address to use for connecting to AOServDaemon', '1.69', null);
select "schema".add_column('ao_servers', 'failover_batch_size', 38, 'int', false, false, false, 'the batch size used for failover replications coming from this server', '1.12', null);
select "schema".add_column('ao_servers', 'monitoring_load_low', 39, 'float', true, false, false, 'the 5-minute load average that will trigger a low-level alert', '1.35', null);
select "schema".add_column('ao_servers', 'monitoring_load_medium', 40, 'float', true, false, false, 'the 5-minute load average that will trigger a medium-level alert', '1.35', null);
select "schema".add_column('ao_servers', 'monitoring_load_high', 41, 'float', true, false, false, 'the 5-minute load average that will trigger a high-level alert', '1.35', null);
select "schema".add_column('ao_servers', 'monitoring_load_critical', 42, 'float', true, false, false, 'the 5-minute load average that will trigger a critical-level alert', '1.35', null);
select "schema".add_column('ao_servers', 'uid_min', 43, 'linux_id', false, false, false, 'the min value for automatic uid selection in useradd', '1.80', null);
select "schema".add_column('ao_servers', 'gid_min', 44, 'linux_id', false, false, false, 'the min value for automatic gid selection in groupadd', '1.80', null);
select "schema".add_column('ao_servers', 'sftp_umask', 45, 'octal_long', true, false, false, 'the optional umask for the sftp-server', '1.81.5', null);

\echo aoserv_permissions
select "schema".add_column('aoserv_permissions', 'name', 0, 'string', false, true, true, 'the unique name of the permission', '1.21', null);
select "schema".add_column('aoserv_permissions', 'sort_order', 1, 'short', false, true, true, 'the sort order for the permission', '1.21', null);

\echo architectures
select "schema".add_column('architectures', 'name', 0, 'string', false, true, true, 'the unique name of the architecture', '1.0a100', null);
select "schema".add_column('architectures', 'bits', 1, 'int', false, false, true, 'the number of bits used by the architecture', '1.0a108', null);

\echo backup_data
select "schema".add_column('backup_data', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a100', '1.30');
select "schema".add_column('backup_data', 'created', 1, 'time', false, false, false, 'the time the dataset was created', '1.0a100', '1.30');
select "schema".add_column('backup_data', 'backup_partition', 2, 'fkey', false, false, false, 'the backup partition that stores the content', '1.0a100', '1.30');
select "schema".add_column('backup_data', 'data_size', 3, 'long', false, false, false, 'the uncompressed size of this data', '1.0a100', '1.30');
select "schema".add_column('backup_data', 'compressed_size', 4, 'long', true, false, false, 'the compressed size of this data', '1.0a100', '1.30');
select "schema".add_column('backup_data', 'md5_hi', 5, 'long', false, false, false, 'the 8 high-order bytes of the uncompressed data', '1.0a100', '1.30');
select "schema".add_column('backup_data', 'md5_lo', 6, 'long', false, false, false, 'the 8 low-order bytes of the uncompressed data', '1.0a100', '1.30');
select "schema".add_column('backup_data', 'is_stored', 7, 'boolean', false, false, false, 'indicates that the data is available on the backup_partition', '1.0a100', '1.30');

\echo backup_levels
select "schema".add_column('backup_levels', 'level', 0, 'short', false, true, true, 'the number of the level', '1.0a100', '1.30');
select "schema".add_column('backup_levels', 'display', 1, 'string', false, false, true, 'the text displayed for this level', '1.0a100', '1.30');

\echo backup_partitions
select "schema".add_column('backup_partitions', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('backup_partitions', 'ao_server', 1, 'fkey', false, false, false, 'the pkey of the server that stores the backup data', '1.0a100', null);
select "schema".add_column('backup_partitions', 'device', 2, 'string', false, false, false, 'the full path to the device file (compared to the df command)', '1.0a100', '1.30');
select "schema".add_column('backup_partitions', 'path', 3, 'path', false, false, false, 'the full path to the root of the backup data', '1.0a100', null);
select "schema".add_column('backup_partitions', 'minimum_free_space', 4, 'long', false, false, false, 'the minimum free space in bytes', '1.0a100', '1.30');
select "schema".add_column('backup_partitions', 'desired_free_space', 5, 'long', false, false, false, 'when the minimum free space has been reached, data is moved off of the partition until the desired space is available', '1.0a100', '1.30');
select "schema".add_column('backup_partitions', 'enabled', 6, 'boolean', false, false, false, 'flags the partition as currently accepting new data', '1.0a100', null);
select "schema".add_column('backup_partitions', 'fill_order', 7, 'int', false, false, false, 'partitions with lower fill_orders are filled first', '1.0a117', '1.30');

\echo backup_reports
select "schema".add_column('backup_reports', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a101', null);
select "schema".add_column('backup_reports', 'server', 1, 'fkey', false, false, false, 'the pkey of the server being backed-up', '1.0a101', null);
select "schema".add_column('backup_reports', 'package', 2, 'fkey', false, false, false, 'the pkey of the package the data is assigned to', '1.0a101', null);
select "schema".add_column('backup_reports', 'date', 3, 'date', false, false, false, 'the date the summary is for', '1.0a101', null);
select "schema".add_column('backup_reports', 'file_count', 4, 'int', false, false, false, 'the number of files belong to this package on this server', '1.0a101', null);
select "schema".add_column('backup_reports', 'uncompressed_size', 5, 'long', false, false, false, 'the total raw byte count', '1.0a101', '1.30');
select "schema".add_column('backup_reports', 'compressed_size', 6, 'long', false, false, false, 'the total number of bytes after compression', '1.0a101', '1.30');
select "schema".add_column('backup_reports', 'disk_size', 7, 'long', false, false, false, 'the total number of bytes of disk space used', '1.0a101', null);

\echo backup_retentions
select "schema".add_column('backup_retentions', 'days', 0, 'short', false, true, true, 'the number of days to keep the backup data', '1.0a100', null);
select "schema".add_column('backup_retentions', 'display', 1, 'string', false, false, true, 'the text displayed for this time increment', '1.0a100', null);

\echo bank_accounts
select "schema".add_column('bank_accounts', 'name', 0, 'string', false, true, false, 'the unique name of this account', '1.0a100', null);
select "schema".add_column('bank_accounts', 'display', 1, 'string', false, false, false, 'the display name of this account', '1.0a100', null);
select "schema".add_column('bank_accounts', 'bank', 2, 'string', false, false, false, 'the bank the account is with', '1.0a100', null);
select "schema".add_column('bank_accounts', 'deposit_delay', 3, 'int', false, false, false, 'the number of business days it takes for a deposit to be sent to the bank account', '1.0a100', null);
select "schema".add_column('bank_accounts', 'withdrawal_delay', 4, 'int', false, false, false, 'the number of business days it takes for a withdrawal to be taken from the bank account', '1.0a100', null);

\echo bank_transaction_types
select "schema".add_column('bank_transaction_types', 'type', 0, 'string', false, true, false, 'the name of the type', '1.0a100', null);
select "schema".add_column('bank_transaction_types', 'display', 1, 'string', false, false, false, 'the display value for the type', '1.0a100', null);
select "schema".add_column('bank_transaction_types', 'description', 2, 'string', false, false, false, 'a description of the type', '1.0a100', null);
select "schema".add_column('bank_transaction_types', 'is_negative', 3, 'boolean', false, false, false, 'if true the amount must be negative', '1.0a100', null);

\echo bank_transactions
select "schema".add_column('bank_transactions', 'time', 0, 'time', false, false, false, 'the time the transaction occured', '1.0a100', null);
select "schema".add_column('bank_transactions', 'transid', 1, 'int', false, true, false, 'a unique identifier for the transaction', '1.0a100', '1.68');
select "schema".add_column('bank_transactions', 'transid', 2, 'pkey', false, true, false, 'a unique identifier for the transaction', '1.69', null);
select "schema".add_column('bank_transactions', 'bank_account', 3, 'string', false, false, false, 'the account the transaction is for', '1.0a100', null);
select "schema".add_column('bank_transactions', 'merchant_account', 4, 'string', true, false, false, 'the merchant account the transaction is for', '1.0a100', '1.28');
select "schema".add_column('bank_transactions', 'processor', 5, 'string', true, false, false, 'the credit card processor used by this transaction', '1.29', null);
select "schema".add_column('bank_transactions', 'administrator', 6, 'username', false, false, false, 'the business_administrator who made this transaction', '1.0a100', null);
select "schema".add_column('bank_transactions', 'type', 7, 'string', false, false, false, 'the type of transaction', '1.0a100', null);
select "schema".add_column('bank_transactions', 'expense_code', 8, 'string', true, false, false, 'the category in which this expense belongs', '1.0a100', null);
select "schema".add_column('bank_transactions', 'description', 9, 'string', false, false, false, 'a description of the transaction', '1.0a100', null);
select "schema".add_column('bank_transactions', 'check_no', 10, 'string', true, false, false, 'the check number (if available)', '1.0a100', null);
select "schema".add_column('bank_transactions', 'amount', 11, 'decimal_2', false, false, false, 'the amount (negative for withdrawal)', '1.0a100', null);
select "schema".add_column('bank_transactions', 'confirmed', 12, 'boolean', false, false, false, 'the confirmation status with bank', '1.0a100', null);

\echo banks
select "schema".add_column('banks', 'name', 0, 'string', false, true, false, 'the unique name of the bank', '1.0a100', null);
select "schema".add_column('banks', 'display', 1, 'string', false, false, false, 'the name that is displayed', '1.0a100', null);

\echo blackhole_email_addresses
select "schema".add_column('blackhole_email_addresses', 'email_address', 0, 'fkey', false, true, false, 'the primary key of the email_address', '1.0a100', null);

\echo brands
select "schema".add_column('brands', 'accounting', 0, 'accounting', false, true, false, '', '1.44', null);
select "schema".add_column('brands', 'nameserver1', 1, 'hostname', false, false, false, '', '1.44', '1.68');
select "schema".add_column('brands', 'nameserver1', 2, 'domain_name', false, false, false, '', '1.69', null);
select "schema".add_column('brands', 'nameserver2', 3, 'hostname', false, false, false, '', '1.44', '1.68');
select "schema".add_column('brands', 'nameserver2', 4, 'domain_name', false, false, false, '', '1.69', null);
select "schema".add_column('brands', 'nameserver3', 5, 'hostname', true, false, false, '', '1.44', '1.68');
select "schema".add_column('brands', 'nameserver3', 6, 'domain_name', true, false, false, '', '1.69', null);
select "schema".add_column('brands', 'nameserver4', 7, 'hostname', true, false, false, '', '1.44', '1.68');
select "schema".add_column('brands', 'nameserver4', 8, 'domain_name', true, false, false, '', '1.69', null);
select "schema".add_column('brands', 'smtp_linux_server_account', 9, 'fkey', false, true, false, '', '1.44', null);
select "schema".add_column('brands', 'smtp_host', 10, 'hostname', true, false, false, '', '1.46', null);
select "schema".add_column('brands', 'smtp_password', 11, 'string', false, false, false, '', '1.44', null);
select "schema".add_column('brands', 'imap_linux_server_account', 12, 'fkey', false, true, false, '', '1.44', null);
select "schema".add_column('brands', 'imap_host', 13, 'hostname', true, false, false, '', '1.46', null);
select "schema".add_column('brands', 'imap_password', 14, 'string', false, false, false, '', '1.44', null);
select "schema".add_column('brands', 'support_email_address', 15, 'fkey', false, true, false, '', '1.44', null);
select "schema".add_column('brands', 'support_email_display', 16, 'string', false, true, false, '', '1.44', null);
select "schema".add_column('brands', 'signup_email_address', 17, 'fkey', false, true, false, '', '1.44', null);
select "schema".add_column('brands', 'signup_email_display', 18, 'string', false, true, false, '', '1.44', null);
select "schema".add_column('brands', 'ticket_encryption_from', 19, 'fkey', false, false, false, '', '1.44', null);
select "schema".add_column('brands', 'ticket_encryption_recipient', 20, 'fkey', false, false, false, '', '1.44', null);
select "schema".add_column('brands', 'signup_encryption_from', 21, 'fkey', false, false, false, '', '1.44', null);
select "schema".add_column('brands', 'signup_encryption_recipient', 22, 'fkey', false, false, false, '', '1.44', null);
select "schema".add_column('brands', 'support_toll_free', 23, 'string', true, false, false, '', '1.44', '1.68');
select "schema".add_column('brands', 'support_toll_free', 24, 'phone', true, false, false, '', '1.69', null);
select "schema".add_column('brands', 'support_day_phone', 25, 'string', true, false, false, '', '1.44', '1.68');
select "schema".add_column('brands', 'support_day_phone', 26, 'phone', true, false, false, '', '1.69', null);
select "schema".add_column('brands', 'support_emergency_phone1', 27, 'string', true, false, false, '', '1.44', '1.68');
select "schema".add_column('brands', 'support_emergency_phone1', 28, 'phone', true, false, false, '', '1.69', null);
select "schema".add_column('brands', 'support_emergency_phone2', 29, 'string', true, false, false, '', '1.44', '1.68');
select "schema".add_column('brands', 'support_emergency_phone2', 30, 'phone', true, false, false, '', '1.69', null);
select "schema".add_column('brands', 'support_fax', 31, 'string', true, false, false, '', '1.44', '1.68');
select "schema".add_column('brands', 'support_fax', 32, 'phone', true, false, false, '', '1.69', null);
select "schema".add_column('brands', 'support_mailing_address1', 33, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('brands', 'support_mailing_address2', 34, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('brands', 'support_mailing_address3', 35, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('brands', 'support_mailing_address4', 36, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('brands', 'english_enabled', 37, 'boolean', false, false, false, '', '1.44', null);
select "schema".add_column('brands', 'japanese_enabled', 38, 'boolean', false, false, false, '', '1.44', null);
select "schema".add_column('brands', 'aoweb_struts_http_url_base', 39, 'string', false, false, false, '', '1.44', null);
select "schema".add_column('brands', 'aoweb_struts_https_url_base', 40, 'string', false, false, false, '', '1.44', null);
select "schema".add_column('brands', 'aoweb_struts_google_verify_content', 41, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('brands', 'aoweb_struts_noindex', 42, 'boolean', false, false, false, '', '1.44', null);
select "schema".add_column('brands', 'aoweb_struts_google_analytics_new_tracking_code', 43, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('brands', 'aoweb_struts_signup_admin_address', 44, 'string', false, false, false, '', '1.44', null);
select "schema".add_column('brands', 'aoweb_struts_vnc_bind', 45, 'fkey', false, true, false, '', '1.52', null);
select "schema".add_column('brands', 'aoweb_struts_keystore_type', 46, 'string', false, false, false, '', '1.53', null);
select "schema".add_column('brands', 'aoweb_struts_keystore_password', 47, 'string', false, false, false, '', '1.53', null);

\echo business_administrators
select "schema".add_column('business_administrators', 'username', 0, 'username', false, true, false, 'the unique identifier for this admin', '1.0a100', null);
select "schema".add_column('business_administrators', 'password', 1, 'string', false, false, false, 'the encrypted password for this admin', '1.0a100', '1.68');
select "schema".add_column('business_administrators', 'password', 2, 'hashed_password', true, false, false, 'the encrypted password for this admin', '1.69', null);
select "schema".add_column('business_administrators', 'name', 3, 'string', false, false, false, 'the name of this admin', '1.0a100', null);
select "schema".add_column('business_administrators', 'title', 4, 'string', true, false, false, 'the admins title within their organization', '1.0a100', null);
select "schema".add_column('business_administrators', 'birthday', 5, 'time', true, false, false, 'the admins birthday', '1.0a100', '1.68');
select "schema".add_column('business_administrators', 'birthday', 6, 'date', true, false, false, 'the admins birthday', '1.69', null);
select "schema".add_column('business_administrators', 'is_preferred', 7, 'boolean', false, false, false, 'if true, customers is preferred', '1.0a100', null);
select "schema".add_column('business_administrators', 'private', 8, 'boolean', false, false, false, 'indicates if the admin should not be listed in publicly available lists', '1.0a100', null);
select "schema".add_column('business_administrators', 'created', 9, 'time', false, false, false, 'the time the admin entry was created', '1.0a100', null);
select "schema".add_column('business_administrators', 'work_phone', 10, 'phone', false, false, false, 'the work phone number (if different than business)', '1.0a100', null);
select "schema".add_column('business_administrators', 'home_phone', 11, 'phone', true, false, false, 'the home phone number', '1.0a100', null);
select "schema".add_column('business_administrators', 'cell_phone', 12, 'phone', true, false, false, 'the cellular phone number', '1.0a100', null);
select "schema".add_column('business_administrators', 'fax', 13, 'phone', true, false, false, 'the fax number (if different than business)', '1.0a100', null);
select "schema".add_column('business_administrators', 'email', 14, 'email', false, false, false, 'the email address', '1.0a100', null);
select "schema".add_column('business_administrators', 'address1', 15, 'string', true, false, false, 'the street address (if different than business)', '1.0a100', null);
select "schema".add_column('business_administrators', 'address2', 16, 'string', true, false, false, 'the street address (if different than business)', '1.0a100', null);
select "schema".add_column('business_administrators', 'city', 17, 'city', true, false, false, 'the city (if different than business)', '1.0a100', '1.68');
select "schema".add_column('business_administrators', 'city', 18, 'string', true, false, false, 'the city (if different than business)', '1.69', null);
select "schema".add_column('business_administrators', 'state',            19, 'state', true, false, false, 'the state (if different than business)', '1.0a100', '1.68');
select "schema".add_column('business_administrators', 'state',            20, 'string', true, false, false, 'the state (if different than business)', '1.69', null);
select "schema".add_column('business_administrators', 'country',          21, 'country', true, false, false, 'the country (if different than business)', '1.0a100', '1.68');
select "schema".add_column('business_administrators', 'country',          22, 'string', true, false, false, 'the country (if different than business)', '1.69', null);
select "schema".add_column('business_administrators', 'zip',              23, 'zip', true, false, false, 'the zip code (if different than business)', '1.0a100', '1.68');
select "schema".add_column('business_administrators', 'zip',              24, 'string', true, false, false, 'the zip code (if different than business)', '1.69', null);
select "schema".add_column('business_administrators', 'disable_log',      25, 'fkey', true, false, false, 'indicates that this account is disabled', '1.0a100', null);
select "schema".add_column('business_administrators', 'can_switch_users', 26, 'boolean', false, false, false, 'allows this person to switch users to any subaccounts', '1.0a118', null);
select "schema".add_column('business_administrators', 'support_code',     27, 'string', true, true, false, 'used to authenticate for email-based supprt', '1.44', null);

\echo business_administrator_permissions
select "schema".add_column('business_administrator_permissions', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.21', null);
select "schema".add_column('business_administrator_permissions', 'username', 1, 'username', false, false, false, 'the username of the administrator with this permission', '1.21', null);
select "schema".add_column('business_administrator_permissions', 'permission', 2, 'string', false, false, false, 'the name of the permission that has been granted', '1.21', null);

\echo business_profiles
select "schema".add_column('business_profiles', 'pkey', 0, 'pkey', false, true, false, 'a unique primary key', '1.0a100', null);
select "schema".add_column('business_profiles', 'accounting', 1, 'accounting', false, false, false, 'the accounting code of the business', '1.0a100', null);
select "schema".add_column('business_profiles', 'priority', 2, 'int', false, false, false, 'the highest priority profile is used', '1.0a100', null);
select "schema".add_column('business_profiles', 'name', 3, 'string', false, false, false, 'the name of the business', '1.0a100', null);
select "schema".add_column(
    'business_profiles',
    'private',
    4,
    'boolean',
    false,
    false,
    false,
    'indicates if the business should not be listed
in publicly available lists',
    '1.0a100',
    null
);
select "schema".add_column('business_profiles', 'phone', 5, 'phone', false, false, false, 'the phone number', '1.0a100', null);
select "schema".add_column('business_profiles', 'fax', 6, 'phone', true, false, false, 'the fax number', '1.0a100', null);
select "schema".add_column('business_profiles', 'address1', 7, 'string', false, false, false, 'the street address of the business', '1.0a100', null);
select "schema".add_column('business_profiles', 'address2', 8, 'string', true, false, false, 'the street address of the business', '1.0a100', null);
select "schema".add_column('business_profiles', 'city',               9, 'city', false, false, false, 'the city', '1.0a100', '1.68');
select "schema".add_column('business_profiles', 'city',              10, 'string', false, false, false, 'the city', '1.69', null);
select "schema".add_column('business_profiles', 'state',             11, 'state', true, false, false, 'the state or providence', '1.0a100', '1.68');
select "schema".add_column('business_profiles', 'state',             12, 'string', true, false, false, 'the state or providence', '1.69', null);
select "schema".add_column('business_profiles', 'country',           13, 'country', false, false, false, 'the two-character country code', '1.0a100', '1.68');
select "schema".add_column('business_profiles', 'country',           14, 'string', false, false, false, 'the two-character country code', '1.69', null);
select "schema".add_column('business_profiles', 'zip',               15, 'zip', true, false, false, 'the zip code', '1.0a100', '1.68');
select "schema".add_column('business_profiles', 'zip',               16, 'string', true, false, false, 'the zip code', '1.69', null);
select "schema".add_column('business_profiles', 'send_invoice',      17, 'boolean', false, false, false, 'indicates to send a monthly invoice via regular mail', '1.0a100', null);
select "schema".add_column('business_profiles', 'created',           18, 'time', false, false, false, 'the time this entry was created', '1.0a100', null);
select "schema".add_column('business_profiles', 'billing_contact',   19, 'string', false, false, false, 'the name to contact for billing information', '1.0a100', null);
select "schema".add_column('business_profiles', 'billing_email',     20, 'string', false, false, false, 'the email address to notify for billing', '1.0a100', null);
select "schema".add_column('business_profiles', 'technical_contact', 21, 'string', false, false, false, 'the name to contact for technical information', '1.0a100', null);
select "schema".add_column('business_profiles', 'technical_email',   22, 'string', false, false, false, 'the email address to notify for technical', '1.0a100', null);

\echo businesses
select "schema".add_column('businesses', 'accounting', 0, 'accounting', false, true, false, 'the unique identifier for this business.', '1.0a100', null);
select "schema".add_column('businesses', 'contract_version', 1, 'string', true, false, false, 'the version number of the contract', '1.0a100', null);
select "schema".add_column('businesses', 'created', 2, 'time', false, false, false, 'the time the account was created', '1.0a100', null);
select "schema".add_column('businesses', 'canceled', 3, 'time', true, false, false, 'the time the account was deactivated', '1.0a100', null);
select "schema".add_column('businesses', 'cancel_reason', 4, 'string', true, false, false, 'the reason the account was canceled', '1.0a100', null);
select "schema".add_column('businesses', 'parent', 5, 'accounting', true, false, false, 'the parent business to this one', '1.0a100', null);
select "schema".add_column('businesses', 'can_add_backup_server', 6, 'boolean', false, false, false, 'the business may add servers to the backup system', '1.0a102', null);
select "schema".add_column(
    'businesses',
    'can_add_businesses',
    7,
    'boolean',
    false,
    false,
    false,
    'if <code>true</code> this business can create
and be the parent of other businesses',
    '1.0a100',
    null
);
select "schema".add_column('businesses', 'can_set_prices', 8, 'boolean', false, false, false, '', '1.0a100', '1.0a122');
select "schema".add_column('businesses', 'can_see_prices', 9, 'boolean', false, false, false, 'if <code>false</code>, prices are filtered', '1.0a103', null);
select "schema".add_column('businesses', 'disable_log', 10, 'fkey', true, false, false, 'indicates the business is disabled', '1.0a100', null);
select "schema".add_column('businesses', 'do_not_disable_reason', 11, 'string', true, false, false, 'a reason why we should not disable the account', '1.0a100', null);
select "schema".add_column(
    'businesses',
    'auto_enable',
    12,
    'boolean',
    false,
    false,
    false,
    'allows the account to be automatically reenabled
on payment',
    '1.0a100',
    null
);
select "schema".add_column(
    'businesses',
    'bill_parent',
    13,
    'boolean',
    false,
    false,
    false,
    'if <code>true</code>, the parent business will
be charged for all resources used by this
account',
    '1.0a100',
    null
);

\echo business_servers
select "schema".add_column('business_servers', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('business_servers', 'accounting', 1, 'accounting', false, false, false, 'the business', '1.0a100', null);
select "schema".add_column('business_servers', 'server', 2, 'fkey', false, false, false, 'the server', '1.0a100', null);
select "schema".add_column('business_servers', 'is_default', 3, 'boolean', false, false, false, 'if <code>true</code>, this is the default server.', '1.0a100', null);
select "schema".add_column('business_servers', 'can_configure_backup', 4, 'boolean', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('business_servers', 'can_control_apache', 5, 'boolean', false, false, false, '', '1.0a100', null);
select "schema".add_column('business_servers', 'can_control_cron', 6, 'boolean', false, false, false, '', '1.0a100', null);
select "schema".add_column('business_servers', 'can_control_interbase', 7, 'boolean', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('business_servers', 'can_control_mysql', 8, 'boolean', false, false, false, '', '1.0a100', null);
select "schema".add_column('business_servers', 'can_control_postgresql', 9, 'boolean', false, false, false, '', '1.0a100', null);
select "schema".add_column('business_servers', 'can_control_xfs', 10, 'boolean', false, false, false, '', '1.0a100', null);
select "schema".add_column('business_servers', 'can_control_xvfb', 11, 'boolean', false, false, false, '', '1.0a100', null);
select "schema".add_column('business_servers', 'can_vnc_console', 12, 'boolean', false, false, false, '', '1.51', null);
select "schema".add_column('business_servers', 'can_control_virtual_server', 13, 'boolean', false, false, false, '', '1.64', null);

\echo client_jvm_profile
select "schema".add_column('client_jvm_profile', 'level', 0, 'int', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('client_jvm_profile', 'classname', 1, 'string', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('client_jvm_profile', 'method_name', 2, 'string', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('client_jvm_profile', 'parameter', 3, 'string', true, false, false, '', '1.0a100', '1.76');
select "schema".add_column('client_jvm_profile', 'use_count', 4, 'long', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('client_jvm_profile', 'total_time', 5, 'interval', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('client_jvm_profile', 'min_time', 6, 'interval', true, false, false, '', '1.0a100', '1.76');
select "schema".add_column('client_jvm_profile', 'max_time', 7, 'interval', true, false, false, '', '1.0a100', '1.76');

\echo country_codes
select "schema".add_column('country_codes', 'code', 0, 'country', false, true, true, 'the two-character code for the country', '1.0a100', '1.68');
select "schema".add_column('country_codes', 'code', 1, 'string', false, true, true, 'the two-character code for the country', '1.69', null);
select "schema".add_column('country_codes', 'name', 2, 'string', false, false, true, 'the name of the country', '1.0a100', null);
select "schema".add_column('country_codes', 'charge_com_supported', 3, 'boolean', false, false, true, 'if the country is supported by Charge.Com', '1.0a100', null);
select "schema".add_column('country_codes', 'charge_com_name', 4, 'string', true, false, true, 'the Charge.Com specific name', '1.0a100', null);

\echo credit_card_processors
select "schema".add_column('credit_card_processors', 'provider_id', 0, 'string', false, true, false, 'the unique ID of this processor', '1.29', null);
select "schema".add_column('credit_card_processors', 'accounting', 1, 'accounting', false, false, false, 'the accounting code of the business owning the merchant account', '1.29', null);
select "schema".add_column('credit_card_processors', 'class_name', 2, 'string', false, false, false, 'the classname of the Java code that connects to the merchant services provider', '1.29', null);
select "schema".add_column('credit_card_processors', 'param1', 3, 'string', true, false, false, 'the optional parameters for the Java code that connects to the merchant services provider', '1.29', null);
select "schema".add_column('credit_card_processors', 'param2', 4, 'string', true, false, false, 'the optional parameters for the Java code that connects to the merchant services provider', '1.29', null);
select "schema".add_column('credit_card_processors', 'param3', 5, 'string', true, false, false, 'the optional parameters for the Java code that connects to the merchant services provider', '1.29', null);
select "schema".add_column('credit_card_processors', 'param4', 6, 'string', true, false, false, 'the optional parameters for the Java code that connects to the merchant services provider', '1.29', null);
select "schema".add_column('credit_card_processors', 'enabled', 7, 'boolean', false, false, false, 'the enabled flag', '1.29', null);
select "schema".add_column('credit_card_processors', 'weight', 8, 'int', false, false, false, 'the weight used for multi-processor weighted transaction distribution', '1.29', null);
select "schema".add_column('credit_card_processors', 'description', 9, 'string', true, false, false, 'an optional description of the processor', '1.29', null);
select "schema".add_column('credit_card_processors', 'encryption_from', 10, 'fkey', false, false, false, 'the from that will be used for encryption', '1.31', null);
select "schema".add_column('credit_card_processors', 'encryption_recipient', 11, 'fkey', false, false, false, 'the recipient that will be used for encryption', '1.31', null);

\echo credit_card_transactions
select "schema".add_column('credit_card_transactions', 'pkey', 0, 'pkey', false, true, false, 'the unique ID of this transaction', '1.29', null);
select "schema".add_column('credit_card_transactions', 'processor_id', 1, 'string', false, false, false, 'the name of the processor used for this transaction', '1.29', null);
select "schema".add_column('credit_card_transactions', 'accounting', 2, 'accounting', false, false, false, 'the accounting code for the source of this transaction', '1.29', null);
select "schema".add_column('credit_card_transactions', 'group_name', 3, 'string', true, false, false, 'the application-provided grouping for this transaction', '1.29', null);
select "schema".add_column('credit_card_transactions', 'test_mode', 4, 'boolean', false, false, false, 'indicates this is a test transaction', '1.29', null);
select "schema".add_column('credit_card_transactions', 'duplicate_window', 5, 'int', false, false, false, 'the number of seconds for duplicate transaction detection', '1.29', null);
select "schema".add_column('credit_card_transactions', 'order_number', 6, 'string', true, false, false, 'the merchant-provided order number for this transaction', '1.29', null);
select "schema".add_column('credit_card_transactions', 'currency_code', 7, 'string', false, false, false, 'the 3-character ISO 4217 country code for the currency used in this transaction', '1.29', null);
select "schema".add_column('credit_card_transactions', 'amount', 8, 'decimal_2', false, false, false, 'the amount of the transaction', '1.29', '1.30');
select "schema".add_column('credit_card_transactions', 'amount', 9, 'big_decimal', false, false, false, 'the amount of the transaction', '1.31', null);
select "schema".add_column('credit_card_transactions', 'tax_amount', 10, 'decimal_2', true, false, false, 'the tax amount of the transaction', '1.29', '1.30');
select "schema".add_column('credit_card_transactions', 'tax_amount', 11, 'big_decimal', true, false, false, 'the tax amount of the transaction', '1.31', null);
select "schema".add_column('credit_card_transactions', 'tax_exempt', 12, 'boolean', false, false, false, 'the taxExempt flag for this transaction', '1.29', null);
select "schema".add_column('credit_card_transactions', 'shipping_amount', 13, 'decimal_2', true, false, false, 'the shipping amount for this transaction', '1.29', '1.30');
select "schema".add_column('credit_card_transactions', 'shipping_amount', 14, 'big_decimal', true, false, false, 'the shipping amount for this transaction', '1.31', null);
select "schema".add_column('credit_card_transactions', 'duty_amount', 15, 'decimal_2', true, false, false, 'the duty amount for this transaction', '1.29', '1.30');
select "schema".add_column('credit_card_transactions', 'duty_amount', 16, 'big_decimal', true, false, false, 'the duty amount for this transaction', '1.31', null);
select "schema".add_column('credit_card_transactions', 'shipping_first_name', 17, 'string', true, false, false, 'the shipping first name', '1.29', null);
select "schema".add_column('credit_card_transactions', 'shipping_last_name', 18, 'string', true, false, false, 'the shipping last name', '1.29', null);
select "schema".add_column('credit_card_transactions', 'shipping_company_name', 19, 'string', true, false, false, 'the shipping company name', '1.29', null);
select "schema".add_column('credit_card_transactions', 'shipping_street_address1', 20, 'string', true, false, false, 'the shipping address line 1', '1.29', null);
select "schema".add_column('credit_card_transactions', 'shipping_street_address2',               21, 'string', true, false, false, 'the shipping address line 2', '1.29', null);
select "schema".add_column('credit_card_transactions', 'shipping_city',                          22, 'city', true, false, false, 'the shipping city', '1.29', '1.68');
select "schema".add_column('credit_card_transactions', 'shipping_city',                          23, 'string', true, false, false, 'the shipping city', '1.69', null);
select "schema".add_column('credit_card_transactions', 'shipping_state',                         24, 'state', true, false, false, 'the shipping state', '1.29', '1.68');
select "schema".add_column('credit_card_transactions', 'shipping_state',                         25, 'string', true, false, false, 'the shipping state', '1.69', null);
select "schema".add_column('credit_card_transactions', 'shipping_postal_code',                   26, 'zip', true, false, false, 'the shipping postal code', '1.29', '1.68');
select "schema".add_column('credit_card_transactions', 'shipping_postal_code',                   27, 'string', true, false, false, 'the shipping postal code', '1.69', null);
select "schema".add_column('credit_card_transactions', 'shipping_country_code',                  28, 'country', true, false, false, 'the shipping two-digit ISO 3166-1 alpha-2 country code', '1.29', '1.68');
select "schema".add_column('credit_card_transactions', 'shipping_country_code',                  29, 'string', true, false, false, 'the shipping two-digit ISO 3166-1 alpha-2 country code', '1.69', null);
select "schema".add_column('credit_card_transactions', 'email_customer',                         30, 'boolean', false, false, false, 'the flag indicating the API should generate an email to the customer', '1.29', null);
select "schema".add_column('credit_card_transactions', 'merchant_email',                         31, 'email', true, false, false, 'the email address of the merchant', '1.29', null);
select "schema".add_column('credit_card_transactions', 'invoice_number',                         32, 'string', true, false, false, 'the merchant-provided invoice number', '1.29', null);
select "schema".add_column('credit_card_transactions', 'purchase_order_number',                  33, 'string', true, false, false, 'the merchant-provided purchase order number', '1.29', null);
select "schema".add_column('credit_card_transactions', 'description',                            34, 'string', true, false, false, 'the merchant-provided description of this transaction', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_created_by',                 35, 'username', false, false, false, 'the business administrator account that provided this credit card', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_principal_name',             36, 'string', true, false, false, 'the application-provided principal who provided this credit card', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_accounting',                 37, 'accounting', false, false, false, 'the accounting code of the business that provided this credit card', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_group_name',                 38, 'string', true, false, false, 'any application-specific grouping', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_provider_unique_id',         39, 'string', true, false, false, 'the unique ID provided by the merchant services provider storage mechanism', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_masked_card_number',         40, 'string', false, false, false, 'the masked card number', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_first_name',                 41, 'string', false, false, false, 'the first name of the card holder', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_last_name',                  42, 'string', false, false, false, 'the last name of the card holder', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_company_name',               43, 'string', true, false, false, 'the company name for the credit card', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_email',                      44, 'email', true, false, false, 'the email address of the card holder', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_phone',                      45, 'phone', true, false, false, 'the phone number of the card holder', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_fax',                        46, 'phone', true, false, false, 'the fax number of the card holder', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_customer_tax_id',            47, 'string', true, false, false, 'the tax ID of the card holder', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_street_address1',            48, 'string', false, false, false, 'the street address of the card holder (line 1)', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_street_address2',            49, 'string', true, false, false, 'the street address of the card holder (line 2)', '1.29', null);
select "schema".add_column('credit_card_transactions', 'credit_card_city',                       50, 'city', false, false, false, 'the city of the card holder', '1.29', '1.68');
select "schema".add_column('credit_card_transactions', 'credit_card_city',                       51, 'string', false, false, false, 'the city of the card holder', '1.69', null);
select "schema".add_column('credit_card_transactions', 'credit_card_state',                      52, 'state', true, false, false, 'the state/province/prefecture of the card holder', '1.29', '1.68');
select "schema".add_column('credit_card_transactions', 'credit_card_state',                      53, 'string', true, false, false, 'the state/province/prefecture of the card holder', '1.69', null);
select "schema".add_column('credit_card_transactions', 'credit_card_postal_code',                54, 'zip', true, false, false, 'the postal code of the card holder', '1.29', '1.68');
select "schema".add_column('credit_card_transactions', 'credit_card_postal_code',                55, 'string', true, false, false, 'the postal code of the card holder', '1.69', null);
select "schema".add_column('credit_card_transactions', 'credit_card_country_code',               56, 'country', false, false, false, 'the two-digit ISO 3166-1 alpha-2 country code of the card holder', '1.29', '1.68');
select "schema".add_column('credit_card_transactions', 'credit_card_country_code',               57, 'string', false, false, false, 'the two-digit ISO 3166-1 alpha-2 country code of the card holder', '1.69', null);
select "schema".add_column('credit_card_transactions', 'credit_card_comments',                   58, 'string', true, false, false, 'any comments associated with the credit card', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_time',                     59, 'time', false, false, false, 'the time the authorization was attempted', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_username',                 60, 'username', false, false, false, 'the username of the business_administrator account that processed the transaction', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_principal_name',           61, 'string', true, false, false, 'an application-provided identity of the user who initiated the transaction', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_communication_result',     62, 'string', true, false, false, 'the authorization communication result', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_provider_error_code',      63, 'string', true, false, false, 'the provider-specific error code', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_error_code',               64, 'string', true, false, false, 'the provider-neutral error code', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_provider_error_message',   65, 'string', true, false, false, 'the provider-specific error message', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_provider_unique_id',       66, 'string', true, false, false, 'the per-provider unique ID', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_provider_approval_result', 67, 'string', true, false, false, 'the provider-specific approval result', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_approval_result',          68, 'string', true, false, false, 'the provider-neutral approval result', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_provider_decline_reason',  69, 'string', true, false, false, 'the provider-specific decline reason', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_decline_reason',           70, 'string', true, false, false, 'the provider-neutral decline reason', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_provider_review_reason',   71, 'string', true, false, false, 'the provider-specific review reason', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_review_reason',            72, 'string', true, false, false, 'the provider-neutral review reason', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_provider_cvv_result',      73, 'string', true, false, false, 'the provider-specific CVV result', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_cvv_result',               74, 'string', true, false, false, 'the provider-neutral CVV result', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_provider_avs_result',      75, 'string', true, false, false, 'the provider-specific AVS result', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_avs_result',               76, 'string', true, false, false, 'the provider-neutral AVS result', '1.29', null);
select "schema".add_column('credit_card_transactions', 'authorization_approval_code',            77, 'string', true, false, false, 'the approval code', '1.29', null);
select "schema".add_column('credit_card_transactions', 'capture_time',                           78, 'time', true, false, false, 'the time the capture was attempted', '1.29', null);
select "schema".add_column('credit_card_transactions', 'capture_username',                       79, 'username', true, false, false, 'the username of the business_administrator account that processed the capture', '1.29', null);
select "schema".add_column('credit_card_transactions', 'capture_principal_name',                 80, 'string', true, false, false, 'an application-provided identity of the user who initiated the capture', '1.29', null);
select "schema".add_column('credit_card_transactions', 'capture_communication_result',           81, 'string', true, false, false, 'the capture communication result', '1.29', null);
select "schema".add_column('credit_card_transactions', 'capture_provider_error_code',            82, 'string', true, false, false, 'the provider-specific error code', '1.29', null);
select "schema".add_column('credit_card_transactions', 'capture_error_code',                     83, 'string', true, false, false, 'the provider-neutral error code', '1.29', null);
select "schema".add_column('credit_card_transactions', 'capture_provider_error_message',         84, 'string', true, false, false, 'the provider-specific error message', '1.29', null);
select "schema".add_column('credit_card_transactions', 'capture_provider_unique_id',             85, 'string', true, false, false, 'the per-provider unique ID', '1.29', null);
select "schema".add_column('credit_card_transactions', 'void_time',                              86, 'time', true, false, false, 'the time the void was attempted', '1.29', null);
select "schema".add_column('credit_card_transactions', 'void_username',                          87, 'username', true, false, false, 'the username of the business_administrator account that processed the void', '1.29', null);
select "schema".add_column('credit_card_transactions', 'void_principal_name',                    88, 'string', true, false, false, 'an application-provided identity of the user who initiated the void', '1.29', null);
select "schema".add_column('credit_card_transactions', 'void_communication_result',              89, 'string', true, false, false, 'the void communication result', '1.29', null);
select "schema".add_column('credit_card_transactions', 'void_provider_error_code',               90, 'string', true, false, false, 'the provider-specific error code', '1.29', null);
select "schema".add_column('credit_card_transactions', 'void_error_code',                        91, 'string', true, false, false, 'the provider-neutral error code', '1.29', null);
select "schema".add_column('credit_card_transactions', 'void_provider_error_message',            92, 'string', true, false, false, 'the provider-specific error message', '1.29', null);
select "schema".add_column('credit_card_transactions', 'void_provider_unique_id',                93, 'string', true, false, false, 'the per-provider unique ID', '1.29', null);
select "schema".add_column('credit_card_transactions', 'status',                                 94, 'string', false, false, false, 'the status of the transaction', '1.29', null);

\echo credit_cards
select "schema".add_column('credit_cards', 'pkey', 0, 'pkey', false, true, false, 'primary key value', '1.0a100', null);
select "schema".add_column('credit_cards', 'processor_id', 1, 'string', false, false, false, 'the unique ID of the merchant services provider that is storing the card number and expiration date', '1.29', null);
select "schema".add_column('credit_cards', 'accounting', 2, 'accounting', false, false, false, 'the accounting code for the card', '1.0a100', null);
select "schema".add_column('credit_cards', 'group_name', 3, 'string', true, false, false, 'any application-specific grouping', '1.29', null);
select "schema".add_column('credit_cards', 'card_number', 4, 'string', false, false, false, 'the encrypted card number', '1.0a100', '1.28');
select "schema".add_column('credit_cards', 'card_info', 5, 'string', false, false, false, 'the masked card number', '1.0a100', null);
select "schema".add_column('credit_cards', 'provider_unique_id', 6, 'string', false, false, false, 'the per-provider unique ID allowing use of this credit card for new transactions', '1.29', null);
select "schema".add_column('credit_cards', 'expiration_month', 7, 'string', false, false, false, 'the encrypted expiration month', '1.0a100', '1.28');
select "schema".add_column('credit_cards', 'expiration_year', 8, 'string', false, false, false, 'the encrypted expiration year', '1.0a100', '1.28');
select "schema".add_column('credit_cards', 'cardholder_name', 9, 'string', false, false, false, 'the encrypted card holders name', '1.0a100', '1.28');
select "schema".add_column('credit_cards', 'first_name', 10, 'string', false, false, false, 'the first name', '1.29', null);
select "schema".add_column('credit_cards', 'last_name', 11, 'string', false, false, false, 'the last name', '1.29', null);
select "schema".add_column('credit_cards', 'company_name', 12, 'string', true, false, false, 'the company name', '1.29', null);
select "schema".add_column('credit_cards', 'email', 13, 'email', true, false, false, 'the email address', '1.29', null);
select "schema".add_column('credit_cards', 'phone', 14, 'phone', true, false, false, 'the daytime phone number', '1.29', null);
select "schema".add_column('credit_cards', 'fax', 15, 'phone', true, false, false, 'the fax number', '1.29', null);
select "schema".add_column('credit_cards', 'customer_tax_id', 16, 'string', true, false, false, 'the social security number of employer identification number', '1.29', null);
select "schema".add_column('credit_cards', 'street_address', 17, 'string', false, false, false, 'the encrypted card holders street address', '1.0a100', '1.28');
select "schema".add_column('credit_cards', 'street_address1', 18, 'string', false, false, false, 'the first line of the street address', '1.29', null);
select "schema".add_column('credit_cards', 'street_address2', 19, 'string', true, false, false, 'the second line of the street address', '1.29', null);
select "schema".add_column('credit_cards', 'city',            20, 'city', false, false, false, 'the encrypted card holders city', '1.0a100', '1.28');
select "schema".add_column('credit_cards', 'city',            21, 'city', false, false, false, 'the card holders city', '1.29', '1.68');
select "schema".add_column('credit_cards', 'city',            22, 'string', false, false, false, 'the card holders city', '1.69', null);
select "schema".add_column('credit_cards', 'state',           23, 'state', true, false, false, 'the encrypted card holders state, null indicates out of country', '1.0a100', '1.28');
select "schema".add_column('credit_cards', 'state',           24, 'state', true, false, false, 'the card holders state', '1.29', '1.68');
select "schema".add_column('credit_cards', 'state',           25, 'string', true, false, false, 'the card holders state', '1.69', null);
select "schema".add_column('credit_cards', 'zip',             26, 'zip', true, false, false, 'the encrypted card holders zip code', '1.0a100', '1.28');
select "schema".add_column('credit_cards', 'postal_code',     27, 'zip', true, false, false, 'the card holders postal code', '1.29', '1.68');
select "schema".add_column('credit_cards', 'postal_code',     28, 'string', true, false, false, 'the card holders postal code', '1.69', null);
select "schema".add_column('credit_cards', 'country_code',    29, 'country', false, false, false, 'the two-character country code', '1.29', '1.68');
select "schema".add_column('credit_cards', 'country_code',    30, 'string', false, false, false, 'the two-character country code', '1.69', null);
select "schema".add_column('credit_cards', 'created',         31, 'time', false, false, false, 'the time the card was added to the database', '1.0a100', null);
select "schema".add_column('credit_cards', 'created_by',      32, 'username', false, false, false, 'the business_administrator who added the card to the database', '1.0a100', null);
select "schema".add_column('credit_cards', 'principal_name',  33, 'string', true, false, false, 'the application-provided principal name of the person added the card to the database', '1.29', null);
select "schema".add_column('credit_cards', 'use_monthly',     34, 'boolean', false, false, false, 'if <code>true</code> the card will be used monthly', '1.0a100', null);
select "schema".add_column('credit_cards', 'active',          35, 'boolean', false, false, false, 'if <code>true</code> the card is currently active', '1.0a100', null);
select "schema".add_column('credit_cards', 'deactivated_on',                   36, 'time', true, false, false, 'the time the card was deactivated', '1.0a100', null);
select "schema".add_column('credit_cards', 'deactivate_reason',                37, 'string', true, false, false, 'the reason the card was deactivated', '1.0a100', null);
select "schema".add_column('credit_cards', 'priority',                         38, 'int', false, false, false, 'the priority of the card, lower is used first', '1.0a100', '1.28');
select "schema".add_column('credit_cards', 'description',                      39, 'string', true, false, false, 'any comment or description', '1.0a100', null);
select "schema".add_column('credit_cards', 'encrypted_card_number',            40, 'string', true, false, false, 'the card number stored encrypted', '1.31', null);
select "schema".add_column('credit_cards', 'encryption_card_number_from',      41, 'fkey', true, false, false, 'the from that was used for card number encryption', '1.31', null);
select "schema".add_column('credit_cards', 'encryption_card_number_recipient', 42, 'fkey', true, false, false, 'the recipient that was used for card number encryption', '1.31', null);
select "schema".add_column('credit_cards', 'encrypted_expiration',             43, 'string', true, false, false, 'the expiration stored encrypted', '1.31', null);
select "schema".add_column('credit_cards', 'encryption_expiration_from',       44, 'fkey', true, false, false, 'the from that was used for expiration encryption', '1.31', null);
select "schema".add_column('credit_cards', 'encryption_expiration_recipient',  45, 'fkey', true, false, false, 'the recipient that was used for expiration encryption', '1.31', null);

\echo cvs_repositories
select "schema".add_column('cvs_repositories', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('cvs_repositories', 'path', 1, 'path', false, false, false, 'the full path to the repository', '1.0a100', null);
select "schema".add_column('cvs_repositories', 'linux_server_account', 2, 'fkey', false, false, false, 'the pkey of the directory owner', '1.0a100', null);
select "schema".add_column('cvs_repositories', 'linux_server_group', 3, 'fkey', false, false, false, 'the pkey of the directory group', '1.0a100', null);
select "schema".add_column('cvs_repositories', 'mode', 4, 'octal_long', false, false, false, 'the directory permissions', '1.0a100', null);
select "schema".add_column('cvs_repositories', 'created', 5, 'time', false, false, false, 'the time the repository was created', '1.0a100', null);
select "schema".add_column('cvs_repositories', 'backup_level', 6, 'short', false, false, false, 'the number of backup copies to keep', '1.0a100', '1.30');
select "schema".add_column('cvs_repositories', 'backup_retention', 7, 'short', false, false, false, 'the number of days backup data will be kept', '1.0a100', '1.30');
select "schema".add_column('cvs_repositories', 'disable_log', 8, 'fkey', true, false, false, 'indicates that this repository is disabled', '1.0a100', null);

\echo cyrus_imapd_binds
select "schema".add_column('cyrus_imapd_binds', 'net_bind',             0, 'fkey',        false,  true, false, 'the IP address, port, and protocol details',                     '1.81.10', null);
select "schema".add_column('cyrus_imapd_binds', 'cyrus_imapd_server',   1, 'fkey',        false, false, false, 'the server that is listening on the address',                    '1.81.10', null);
select "schema".add_column('cyrus_imapd_binds', 'servername',           2, 'domain_name',  true, false, false, 'the servername for this bind',                                   '1.81.10', null);
select "schema".add_column('cyrus_imapd_binds', 'certificate',          3, 'fkey',         true, false, false, 'the certificate used by this bind',                              '1.81.10', null);
select "schema".add_column('cyrus_imapd_binds', 'allow_plaintext_auth', 4, 'boolean',      true, false, false, 'allows plaintext authentication (PLAIN/LOGIN) on non-TLS links', '1.81.10', null);

\echo cyrus_imapd_servers
select "schema".add_column('cyrus_imapd_servers', 'ao_server',              0, 'fkey',        false,  true, false, 'the pkey of the server that runs this Cyrus IMAPD instance',         '1.81.10', null);
select "schema".add_column('cyrus_imapd_servers', 'sieve_net_bind',         1, 'fkey',         true,  true, false, 'the port the server binds to for sieve, if enabled',                 '1.81.10', null);
select "schema".add_column('cyrus_imapd_servers', 'servername',             2, 'domain_name',  true, false, false, 'the servername for this server',                                     '1.81.10', null);
select "schema".add_column('cyrus_imapd_servers', 'certificate',            3, 'fkey',        false, false, false, 'the certificate used for this server',                               '1.81.10', null);
select "schema".add_column('cyrus_imapd_servers', 'allow_plaintext_auth',   4, 'boolean',     false, false, false, 'allows plaintext authentication (PLAIN/LOGIN) on non-TLS links',     '1.81.10', null);
select "schema".add_column('cyrus_imapd_servers', 'delete_duration',        5, 'float',        true, false, false, 'the duration after which delayed delete folders are removed',        '1.81.10', null);
select "schema".add_column('cyrus_imapd_servers', 'delete_duration_unit',   6, 'string',       true, false, false, 'the time unit for delete_duration, one of "d", "h", "m", "s"',       '1.81.10', null);
select "schema".add_column('cyrus_imapd_servers', 'expire_duration',        7, 'float',       false, false, false, 'prune the duplicate database of entries older than expire-duration', '1.81.10', null);
select "schema".add_column('cyrus_imapd_servers', 'expire_duration_unit',   8, 'string',       true, false, false, 'the time unit for expire_duration, one of "d", "h", "m", "s"',       '1.81.10', null);
select "schema".add_column('cyrus_imapd_servers', 'expunge_duration',       9, 'float',        true, false, false, 'the duration after which delayed expunge messages are removed',      '1.81.10', null);
select "schema".add_column('cyrus_imapd_servers', 'expunge_duration_unit', 10, 'string',       true, false, false, 'the time unit for expunge_duration, one of "d", "h", "m", "s"',      '1.81.10', null);

\echo daemon_profile
select "schema".add_column('daemon_profile', 'server', 0, 'hostname', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('daemon_profile', 'ao_server', 1, 'hostname', false, false, false, '', '1.31', '1.68');
select "schema".add_column('daemon_profile', 'ao_server', 2, 'domain_name', false, false, false, '', '1.69', '1.76');
select "schema".add_column('daemon_profile', 'level', 3, 'int', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('daemon_profile', 'classname', 4, 'string', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('daemon_profile', 'method_name', 5, 'string', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('daemon_profile', 'parameter', 6, 'string', true, false, false, '', '1.0a100', '1.76');
select "schema".add_column('daemon_profile', 'use_count', 7, 'long', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('daemon_profile', 'total_time', 8, 'interval', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('daemon_profile', 'min_time', 9, 'interval', true, false, false, '', '1.0a100', '1.76');
select "schema".add_column('daemon_profile', 'max_time', 10, 'interval', true, false, false, '', '1.0a100', '1.76');

\echo disable_log
select "schema".add_column('disable_log', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('disable_log', 'time', 1, 'time', false, false, false, 'the time the stuff was disabled', '1.0a100', null);
select "schema".add_column('disable_log', 'accounting', 2, 'accounting', false, false, false, 'the business whose resources are being disabled', '1.0a100', null);
select "schema".add_column('disable_log', 'disabled_by', 3, 'username', false, false, false, 'the person who disabled the accounts', '1.0a100', null);
select "schema".add_column('disable_log', 'disable_reason', 4, 'string', true, false, false, 'the optional reason the accounts were disabled', '1.0a100', null);

\echo disk_types
select "schema".add_column('disk_types', 'type', 0, 'string', false, true, true, 'the unique name of the type of disk', '1.36', '1.41');
select "schema".add_column('disk_types', 'sort_order', 1, 'short', false, true, true, 'the sort order of the disk, those sorted higher may be substituted for those sorted lower', '1.36', '1.41');

\echo distro_file_types
select "schema".add_column('distro_file_types', 'type', 0, 'string', false, true, true, 'the unique name of the type', '1.0a100', null);
select "schema".add_column('distro_file_types', 'description', 1, 'string', false, false, true, 'a description of the type of file', '1.0a100', null);

\echo distro_files
select "schema".add_column('distro_files', 'pkey', 0, 'pkey', false, true, false, 'the unique pkey', '1.0a108', null);
select "schema".add_column('distro_files', 'operating_system_version', 1, 'fkey', false, false, false, 'the OS version that contains the file', '1.0a108', null);
select "schema".add_column('distro_files', 'path', 2, 'path', false, true, false, 'the full path to the file', '1.0a100', '1.0a107');
select "schema".add_column('distro_files', 'path', 3, 'path', false, false, false, 'the full path to the file', '1.0a108', null);
select "schema".add_column('distro_files', 'optional', 4, 'boolean', false, false, false, 'if the file is optional', '1.0a100', null);
select "schema".add_column('distro_files', 'type', 5, 'string', false, false, false, 'the type of file', '1.0a100', null);
select "schema".add_column('distro_files', 'mode', 6, 'octal_long', false, false, false, 'the mode (including file type bits)', '1.0a100', null);
select "schema".add_column('distro_files', 'linux_account', 7, 'username', false, false, false, 'the owner of the file', '1.0a100', null);
select "schema".add_column('distro_files', 'linux_group', 8, 'string', false, false, false, 'the group of the file', '1.0a100', '1.80');
select "schema".add_column('distro_files', 'linux_group', 9, 'group_id', false, false, false, 'the group of the file', '1.80.0', null);
select "schema".add_column('distro_files', 'size', 10, 'long', true, false, false, 'the length of the file', '1.0a100', null);
select "schema".add_column('distro_files', 'file_md5', 11, 'string', true, false, false, 'the md5 hash if is a regular file', '1.0a100', '1.0a104');
select "schema".add_column('distro_files', 'file_md5_hi', 12, 'long', true, false, false, 'the md5 hash if is a regular file', '1.0a105', '1.79');
select "schema".add_column('distro_files', 'file_md5_lo', 13, 'long', true, false, false, 'the md5 hash if is a regular file', '1.0a105', '1.79');
select "schema".add_column('distro_files', 'file_sha256_0', 14, 'long', true, false, false, 'the first 64 bits of SHA-256 hash if is a regular file', '1.80', null);
select "schema".add_column('distro_files', 'file_sha256_1', 15, 'long', true, false, false, 'the second 64 bits of SHA-256 hash if is a regular file', '1.80', null);
select "schema".add_column('distro_files', 'file_sha256_2', 16, 'long', true, false, false, 'the third 64 bits of SHA-256 hash if is a regular file', '1.80', null);
select "schema".add_column('distro_files', 'file_sha256_3', 17, 'long', true, false, false, 'the fourth 64 bits of SHA-256 hash if is a regular file', '1.80', null);
select "schema".add_column('distro_files', 'symlink_target', 18, 'string', true, false, false, 'the target if is a symbolic link', '1.0a100', null);

\echo distro_report_types
select "schema".add_column('distro_report_types', 'name', 0, 'string', false, true, true, 'the unique name of the type', '1.70', null);
select "schema".add_column('distro_report_types', 'display', 1, 'string', false, false, true, 'a display value of the type of report', '1.70', null);

\echo dns_forbidden_zones
select "schema".add_column('dns_forbidden_zones', 'zone', 0, 'zone', false, true, true, 'the zone (domain) that is forbidden', '1.0a100', null);

\echo dns_records
select "schema".add_column('dns_records', 'pkey',          0, 'pkey',     false, true,  false, 'a generated pkey', '1.0a100', null);
select "schema".add_column('dns_records', 'zone',          1, 'zone',     false, false, false, 'the zone as found in dns_zones', '1.0a100', null);
select "schema".add_column('dns_records', 'domain',        2, 'hostname', false, false, false, 'the first column in the zone files', '1.0a100', '1.68');
select "schema".add_column('dns_records', 'domain',        3, 'string',   false, false, false, 'the first column in the zone files', '1.69', null);
select "schema".add_column('dns_records', 'type',          4, 'string',   false, false, false, 'the type as found in dns_types', '1.0a100', null);
select "schema".add_column('dns_records', 'mx_priority',   5, 'int',      true,  false, false, 'the priority for the MX entries', '1.0a100', '1.71');
select "schema".add_column('dns_records', 'priority',      6, 'int',      true,  false, false, 'the priority for the entry', '1.72', null);
select "schema".add_column('dns_records', 'weight',        7, 'int',      true,  false, false, 'the relative weight for records with the same priority', '1.72', null);
select "schema".add_column('dns_records', 'port',          8, 'int',      true,  false, false, 'the TCP or UDP port on which the service is to be found', '1.72', null);
select "schema".add_column('dns_records', 'destination',   9, 'string',   false, false, false, 'the destination, either IP addredd or hostname depending on the type of record', '1.0a100', null);
select "schema".add_column('dns_records', 'dhcp_address', 10, 'int',      true,  false, false, 'the pkey of the IP address whos changes are followed', '1.0a100', '1.68');
select "schema".add_column('dns_records', 'dhcp_address', 11, 'fkey',     true,  false, false, 'the pkey of the IP address whos changes are followed', '1.69', null);
select "schema".add_column('dns_records', 'ttl',          12, 'int',      true,  false, false, 'the time to live field', '1.0a127', null);

\echo dns_tlds
select "schema".add_column('dns_tlds', 'domain', 0, 'hostname', false, true, true, 'the domain', '1.0a100', '1.68');
select "schema".add_column('dns_tlds', 'domain', 1, 'domain_name', false, true, true, 'the domain', '1.69', null);
select "schema".add_column('dns_tlds', 'description', 2, 'string', false, false, true, '', '1.0a100', null);

\echo dns_types
select "schema".add_column('dns_types', 'type',         0, 'string',  false, true,  true, 'the type', '1.0a100', null);
select "schema".add_column('dns_types', 'description',  1, 'string',  false, false, true, 'the description of the type', '1.0a100', null);
select "schema".add_column('dns_types', 'is_mx',        2, 'boolean', false, false, true, 'flags which types use the MX weight', '1.0a100', '1.71');
select "schema".add_column('dns_types', 'has_priority', 3, 'boolean', false, false, true, 'flags which types have a priority', '1.72', null);
select "schema".add_column('dns_types', 'has_weight',   4, 'boolean', false, false, true, 'flags which types have a weight', '1.72', null);
select "schema".add_column('dns_types', 'has_port',     5, 'boolean', false, false, true, 'flags which types have a port', '1.72', null);
select "schema".add_column('dns_types', 'param_ip',     6, 'boolean', false, false, true, 'flags if the parameter is a IP or a hostname', '1.0a100', null);

\echo dns_zones
select "schema".add_column('dns_zones', 'zone', 0, 'zone', false, true, false, 'the zone (domain) that is hosted', '1.0a100', null);
select "schema".add_column('dns_zones', 'file', 1, 'string', false, false, false, 'the filename of the zone file', '1.0a100', null);
select "schema".add_column('dns_zones', 'package', 2, 'package', false, false, false, 'the package that owns the zones', '1.0a100', '1.80');
select "schema".add_column('dns_zones', 'package', 3, 'accounting', false, false, false, 'the package that owns the zones', '1.80.0', null);
select "schema".add_column('dns_zones', 'hostmaster', 4, 'string', false, false, false, 'the email address of the person in charge of the domain', '1.0a100', null);
select "schema".add_column('dns_zones', 'serial', 5, 'long', false, false, false, 'the ever-incrementing serial number for the file', '1.0a100', null);
select "schema".add_column('dns_zones', 'ttl', 6, 'int', false, false, false, '', '1.0a127', null);

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

\echo email_blacklists
select "schema".add_column('email_blacklists', 'ip_address', 0, 'string', false, true, false, '', '1.0a105', '1.0a121');
select "schema".add_column('email_blacklists', 'is_dsbl', 1, 'boolean', false, false, false, '', '1.0a105', '1.0a121');
select "schema".add_column('email_blacklists', 'is_ordb', 2, 'boolean', false, false, false, '', '1.0a105', '1.0a121');
select "schema".add_column('email_blacklists', 'is_spamhaus', 3, 'boolean', false, false, false, '', '1.0a105', '1.0a121');
select "schema".add_column('email_blacklists', 'spamhaus_lists', 4, 'string', true, false, false, '', '1.0a106', '1.0a121');

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

\echo expense_categories
select "schema".add_column('expense_categories', 'expense_code', 0, 'string', false, true, false, 'a simple code used as primary key', '1.0a100', null);

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

\echo file_backups
select "schema".add_column('file_backups', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a100', '1.30');
select "schema".add_column('file_backups', 'server', 1, 'fkey', false, false, false, 'the server that the file resides on', '1.0a100', '1.30');
select "schema".add_column('file_backups', 'path', 2, 'string', false, false, false, 'the pkey in file_paths for the path of this file', '1.0a100', '1.30');
select "schema".add_column('file_backups', 'device', 3, 'short', false, false, false, 'the device that was storing this file', '1.0a100', '1.0a106');
select "schema".add_column('file_backups', 'device', 4, 'short', true, false, false, 'the device that was storing this file', '1.0a107', '1.30');
select "schema".add_column('file_backups', 'inode', 5, 'long', false, false, false, 'the unique identifier for this object within the device', '1.0a100', '1.0a106');
select "schema".add_column('file_backups', 'inode', 6, 'long', true, false, false, 'the unique identifier for this object within the device', '1.0a107', '1.30');
select "schema".add_column('file_backups', 'package', 7, 'fkey', false, false, false, 'the number of the package that owns the file', '1.0a100', '1.30');
select "schema".add_column('file_backups', 'mode', 8, 'octal_long', false, false, false, 'the permissions and type of the file', '1.0a100', '1.30');
select "schema".add_column('file_backups', 'uid', 9, 'int', false, false, false, 'the file owner', '1.0a100', '1.0a106');
select "schema".add_column('file_backups', 'uid', 10, 'int', true, false, false, 'the file owner', '1.0a107', '1.30');
select "schema".add_column('file_backups', 'gid', 11, 'int', false, false, false, 'the file group', '1.0a100', '1.0a106');
select "schema".add_column('file_backups', 'gid', 12, 'int', true, false, false, 'the file group', '1.0a107', '1.30');
select "schema".add_column('file_backups', 'backup_data', 13, 'fkey', true, false, false, 'the data content for the file', '1.0a100', '1.30');
select "schema".add_column('file_backups', 'create_time', 14, 'time', false, false, false, 'the time the file backup entry was created', '1.0a100', '1.30');
select "schema".add_column('file_backups', 'modify_time', 15, 'time', true, false, false, 'the modification time of the file the last time it was verified', '1.0a100', '1.30');
select "schema".add_column('file_backups', 'remove_time', 16, 'time', true, false, false, 'the time the file backup entry was no longer valid', '1.0a100', '1.30');
select "schema".add_column('file_backups', 'backup_level', 17, 'short', false, false, false, 'the number of times to store this backup', '1.0a100', '1.30');
select "schema".add_column('file_backups', 'backup_retention', 18, 'short', false, false, false, 'the number of days the backups will be kept', '1.0a100', '1.30');
select "schema".add_column('file_backups', 'symlink_target', 19, 'string', true, false, false, 'the target of a symbolic link', '1.0a100', '1.30');
select "schema".add_column('file_backups', 'device_id', 20, 'long', true, false, false, 'the ID for device files', '1.0a100', '1.30');

\echo file_backup_devices
select "schema".add_column('file_backup_devices', 'pkey', 0, 'short', false, true, true, 'a generated primary key', '1.0a100', '1.30');
select "schema".add_column('file_backup_devices', 'device', 1, 'long', false, true, true, 'the device number', '1.0a100', '1.30');
select "schema".add_column('file_backup_devices', 'can_backup', 2, 'boolean', false, false, true, 'indicates that the backup system is allowed to backup files on devices of this number', '1.0a100', '1.30');
select "schema".add_column('file_backup_devices', 'description', 3, 'string', false, false, true, 'a description of the device', '1.0a100', '1.30');

\echo file_backup_roots
select "schema".add_column('file_backup_roots', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a100', '1.30');
select "schema".add_column('file_backup_roots', 'path', 1, 'string', false, false, false, 'the pkey in file_paths for the path of this file', '1.0a100', '1.30');
select "schema".add_column('file_backup_roots', 'server', 2, 'fkey', false, false, false, 'the server that the file resides on', '1.0a100', '1.30');
select "schema".add_column('file_backup_roots', 'package', 3, 'fkey', false, false, false, 'the number of the package that owns the file', '1.0a100', '1.30');

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

\echo file_backup_stats
select "schema".add_column('file_backup_stats', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a100', '1.30');
select "schema".add_column('file_backup_stats', 'server', 1, 'fkey', false, false, false, 'the pkey of the server that the file resides on', '1.0a100', '1.30');
select "schema".add_column('file_backup_stats', 'start_time', 2, 'time', false, false, false, 'the time the backup started', '1.0a100', '1.30');
select "schema".add_column('file_backup_stats', 'end_time', 3, 'time', false, false, false, 'the time the backup ended', '1.0a100', '1.30');
select "schema".add_column('file_backup_stats', 'scanned', 4, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('file_backup_stats', 'file_backup_attribute_matches', 5, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('file_backup_stats', 'not_matched_md5_files', 6, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('file_backup_stats', 'not_matched_md5_failures', 7, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('file_backup_stats', 'send_missing_backup_data_files', 8, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('file_backup_stats', 'send_missing_backup_data_failures', 9, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('file_backup_stats', 'delete_unused_backup_data1', 10, 'int', false, false, false, '', '1.0a100', '1.0a108');
select "schema".add_column('file_backup_stats', 'temp_files', 11, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('file_backup_stats', 'temp_send_backup_data_files', 12, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('file_backup_stats', 'temp_failures', 13, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('file_backup_stats', 'delete_unused_backup_data2', 14, 'int', false, false, false, '', '1.0a100', '1.0a108');
select "schema".add_column('file_backup_stats', 'added', 15, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('file_backup_stats', 'deleted', 16, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('file_backup_stats', 'is_successful', 17, 'boolean', false, false, false, '', '1.0a100', '1.30');

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

\echo incoming_payments
select "schema".add_column('incoming_payments', 'transid', 0, 'int', false, true, false, 'the unique transaction number (see transactions)', '1.0a100', '1.28');
select "schema".add_column('incoming_payments', 'encrypted_card_name', 1, 'string', false, false, false, 'the encrypted name of the card', '1.0a100', '1.28');
select "schema".add_column('incoming_payments', 'encrypted_card_number', 2, 'string', false, false, false, 'the encrypted card number', '1.0a100', '1.28');
select "schema".add_column('incoming_payments', 'encrypted_expiration_month', 3, 'string', false, false, false, 'the encrypted expiration month', '1.0a100', '1.28');
select "schema".add_column('incoming_payments', 'encrypted_expiration_year', 4, 'string', false, false, false, 'the encrypted expiration year', '1.0a100', '1.28');

\echo interbase_backups
select "schema".add_column('interbase_backups', 'pkey', 0, 'pkey', false, true, false, 'a unique, generated primary key', '1.0a100', '1.30');
select "schema".add_column('interbase_backups', 'package', 1, 'fkey', false, false, false, 'the pkey of the package that owns this backup', '1.0a100', '1.30');
select "schema".add_column('interbase_backups', 'db_group_name', 2, 'string', false, false, false, 'the name of the database group', '1.0a100', '1.30');
select "schema".add_column('interbase_backups', 'db_name', 3, 'string', false, false, false, 'the name of the database', '1.0a100', '1.30');
select "schema".add_column('interbase_backups', 'ao_server', 4, 'fkey', false, false, false, 'the pkey of the server that this database was backed-up from', '1.0a100', '1.30');
select "schema".add_column('interbase_backups', 'start_time', 5, 'time', false, false, false, 'the time the backup was started', '1.0a100', '1.30');
select "schema".add_column('interbase_backups', 'end_time', 6, 'time', false, false, false, 'the time the backup was completed', '1.0a100', '1.30');
select "schema".add_column('interbase_backups', 'backup_data', 7, 'fkey', false, false, false, 'the pkey of the backup_data', '1.0a100', '1.30');
select "schema".add_column('interbase_backups', 'backup_level', 8, 'short', false, false, false, 'the number of backup copies to keep', '1.0a100', '1.30');
select "schema".add_column('interbase_backups', 'backup_retention', 9, 'short', false, false, false, 'the number of days to keep the backups', '1.0a100', '1.30');

\echo interbase_databases
select "schema".add_column('interbase_databases', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a100', '1.30');
select "schema".add_column('interbase_databases', 'name', 1, 'string', false, false, false, 'the unique-per-server group name', '1.0a100', '1.30');
select "schema".add_column('interbase_databases', 'db_group', 2, 'string', false, false, false, 'the pkey in interbase_db_groups', '1.0a100', '1.30');
select "schema".add_column('interbase_databases', 'datdba', 3, 'fkey', false, false, false, 'the pkey in interbase_server_users', '1.0a100', '1.30');
select "schema".add_column('interbase_databases', 'backup_retention', 4, 'int', false, false, false, 'the number of days backups will be kept', '1.0a100', '1.0a113');
select "schema".add_column('interbase_databases', 'backup_level', 5, 'short', false, false, false, 'the number of backup copies to keep', '1.0a114', '1.30');
select "schema".add_column('interbase_databases', 'backup_retention', 6, 'short', false, false, false, 'the number of days backups will be kept', '1.0a114', '1.30');

\echo interbase_db_groups
select "schema".add_column('interbase_db_groups', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a100', '1.30');
select "schema".add_column('interbase_db_groups', 'name', 1, 'string', false, false, false, 'the unique-per-server group name', '1.0a100', '1.30');
select "schema".add_column('interbase_db_groups', 'linux_server_group', 2, 'fkey', false, false, false, 'the pkey in linux_server_groups', '1.0a100', '1.30');

\echo interbase_server_users
select "schema".add_column('interbase_server_users', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a100', '1.30');
select "schema".add_column('interbase_server_users', 'username', 1, 'username', false, false, false, 'the username of the interbase_user', '1.0a100', '1.30');
select "schema".add_column('interbase_server_users', 'ao_server', 2, 'fkey', false, false, false, 'the pkey of the server', '1.0a100', '1.30');
select "schema".add_column('interbase_server_users', 'disable_log', 3, 'fkey', true, false, false, 'indicates that this account is disable', '1.0a100', '1.30');
select "schema".add_column('interbase_server_users', 'predisable_password', 4, 'string', true, false, false, 'the password used before the account was disabled', '1.0a115', '1.30');

\echo interbase_reserved_words
select "schema".add_column('interbase_reserved_words', 'word', 0, 'string', false, true, true, 'the reserved word', '1.0a100', '1.30');

\echo interbase_users
select "schema".add_column('interbase_users', 'username', 0, 'username', false, true, false, 'the username of the user', '1.0a100', '1.30');
select "schema".add_column('interbase_users', 'first_name', 1, 'string', true, false, false, 'the first name of the user', '1.0a100', '1.30');
select "schema".add_column('interbase_users', 'middle_name', 2, 'string', true, false, false, 'the middle name of the user', '1.0a100', '1.30');
select "schema".add_column('interbase_users', 'last_name', 3, 'string', true, false, false, 'the last name of the user', '1.0a100', '1.30');
select "schema".add_column('interbase_users', 'disable_log', 4, 'fkey', true, false, false, 'indicates that this account is disabled', '1.0a100', '1.30');

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

\echo limits
select "schema".add_column('limits', 'service_level', 0, 'string', false, false, true, '', '1.0a100', '1.0a122');
select "schema".add_column('limits', 'resource', 1, 'string', false, false, true, '', '1.0a100', '1.0a122');
select "schema".add_column('limits', 'resource_limit', 2, 'int', true, false, true, '', '1.0a100', '1.0a122');

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

\echo linux_ids
select "schema".add_column('linux_ids', 'id', 0, 'int', false, true, true, 'the id', '1.0a100', '1.68');
select "schema".add_column('linux_ids', 'id', 1, 'pkey', false, true, true, 'the id', '1.69', '1.80');
select "schema".add_column('linux_ids', 'is_system', 2, 'boolean', false, false, true, 'true if reserved for system use', '1.0a100', '1.79');

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

\echo master_history
select "schema".add_column('master_history', 'command_id', 0, 'long', false, true, false, '', '1.0a100', '1.76');
select "schema".add_column('master_history', 'process_id', 1, 'long', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master_history', 'connector_id', 2, 'long', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master_history', 'authenticated_user', 3, 'username', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master_history', 'effective_user', 4, 'username', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master_history', 'host', 5, 'ip_address', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master_history', 'protocol', 6, 'string', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master_history', 'is_secure', 7, 'boolean', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master_history', 'start_time', 8, 'time', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master_history', 'end_time', 9, 'time', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master_history', 'command', 10, 'string', true, false, false, '', '1.0a100', '1.76');

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

\echo master_server_profile
select "schema".add_column('master_server_profile', 'level', 0, 'int', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master_server_profile', 'classname', 1, 'string', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master_server_profile', 'method_name', 2, 'string', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master_server_profile', 'parameter', 3, 'string', true, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master_server_profile', 'use_count', 4, 'long', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master_server_profile', 'total_time', 5, 'interval', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master_server_profile', 'min_time', 6, 'interval', true, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master_server_profile', 'max_time', 7, 'interval', true, false, false, '', '1.0a100', '1.76');

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

\echo merchant_accounts
select "schema".add_column('merchant_accounts', 'name', 0, 'string', false, true, false, 'the unique name', '1.0a100', '1.28');
select "schema".add_column('merchant_accounts', 'display', 1, 'string', false, false, false, 'the display name', '1.0a100', '1.28');
select "schema".add_column('merchant_accounts', 'bank_account', 2, 'string', false, false, false, 'the bank account used in the transactions', '1.0a100', '1.28');
select "schema".add_column('merchant_accounts', 'java_connector', 3, 'string', true, false, false, 'the Java class that connects to this provider, NULL means cannot connect with Java', '1.0a100', '1.28');
select "schema".add_column('merchant_accounts', 'url', 4, 'string', true, false, false, 'the URL to connect to', '1.0a100', '1.28');
select "schema".add_column('merchant_accounts', 'merchant_id', 5, 'string', false, false, false, 'the merchant ID', '1.0a100', '1.28');
select "schema".add_column('merchant_accounts', 'deposit_delay', 6, 'int', false, false, false, 'the number of business days it takes for a deposit to be sent to the bank account', '1.0a100', '1.28');
select "schema".add_column('merchant_accounts', 'withdrawal_delay', 7, 'int', false, false, false, 'the number of business days it takes for a withdrawal to be taken from the bank account', '1.0a100', '1.28');

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

\echo mysql_backups
select "schema".add_column('mysql_backups', 'pkey', 0, 'pkey', false, true, false, 'a unique, generated primary key', '1.0a100', '1.30');
select "schema".add_column('mysql_backups', 'package', 1, 'fkey', false, false, false, 'the pkey of package that owns this backup', '1.0a100', '1.30');
select "schema".add_column('mysql_backups', 'db_name', 2, 'string', false, false, false, 'the name of the database', '1.0a100', '1.30');
select "schema".add_column('mysql_backups', 'ao_server', 3, 'fkey', false, false, false, 'the pkey of the server that this database was backed-up from', '1.0a100', '1.3');
select "schema".add_column('mysql_backups', 'mysql_server', 4, 'fkey', false, false, false, 'the pkey of the MySQL server that this database was backed-up from', '1.4', '1.30');
select "schema".add_column('mysql_backups', 'start_time', 5, 'time', false, false, false, 'the time the backup was started', '1.0a100', '1.30');
select "schema".add_column('mysql_backups', 'end_time', 6, 'time', false, false, false, 'the time the backup was completed', '1.0a100', '1.30');
select "schema".add_column('mysql_backups', 'backup_data', 7, 'fkey', false, false, false, 'the data store for this backup', '1.0a100', '1.30');
select "schema".add_column('mysql_backups', 'backup_level', 8, 'short', false, false, false, 'the number of backup copies to keep', '1.0a100', '1.30');
select "schema".add_column('mysql_backups', 'backup_retention', 9, 'short', false, false, false, 'the number of days to keep the backup data', '1.0a100', '1.30');

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

\echo mysql_hosts
select "schema".add_column('mysql_hosts', 'pkey', 0, 'pkey', false, true, false, 'a genenrated primary key', '1.0a100', '1.3');
select "schema".add_column('mysql_hosts', 'ao_server', 1, 'fkey', false, false, false, 'the pkey of the mysql server', '1.0a100', '1.3');
select "schema".add_column('mysql_hosts', 'host', 2, 'string', false, false, false, 'the hostname that is allowed to connect', '1.0a100', '1.3');

\echo mysql_reserved_words
select "schema".add_column('mysql_reserved_words', 'word', 0, 'string', false, true, true, 'the word that may not be used', '1.0a100', '1.80');

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

\echo net_device_host_routes
select "schema".add_column('net_device_host_routes', 'pkey', 0, 'pkey', false, true, false, '', '1.0a100', '1.0a130');
select "schema".add_column('net_device_host_routes', 'net_device', 1, 'fkey', false, false, false, '', '1.0a100', '1.0a130');
select "schema".add_column('net_device_host_routes', 'connected_ao_server', 2, 'fkey', false, false, false, '', '1.0a100', '1.0a130');

\echo net_device_ids
select "schema".add_column('net_device_ids', 'name', 0, 'string', false, true, true, 'the unique name of the device', '1.0a100', null);
select "schema".add_column('net_device_ids', 'is_loopback', 1, 'boolean', false, false, true, 'if the device is the loopback device', '1.0a100', null);

\echo net_device_local_routes
select "schema".add_column('net_device_local_routes', 'pkey', 0, 'pkey', false, true, false, '', '1.0a100', '1.0a130');
select "schema".add_column('net_device_local_routes', 'net_device', 1, 'fkey', false, false, false, '', '1.0a100', '1.0a130');
select "schema".add_column('net_device_local_routes', 'local_net', 2, 'string', false, false, false, '', '1.0a100', '1.0a130');

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

\echo net_monitoring_times
select "schema".add_column('net_monitoring_times', 'time', 0, 'int', false, true, true, '', '1.0a100', '1.0a103');
select "schema".add_column('net_monitoring_times', 'display', 1, 'string', false, false, true, '', '1.0a100', '1.0a103');

\echo net_ports
select "schema".add_column('net_ports', 'port', 0, 'int', false, true, true, 'the unique port number', '1.0a100', '1.68');
select "schema".add_column('net_ports', 'port', 1, 'pkey', false, true, true, 'the unique port number', '1.69', '1.80');
select "schema".add_column('net_ports', 'is_user', 2, 'boolean', false, false, true, 'true if user processes may listen on the port', '1.0a100', '1.80');

\echo net_protocols
select "schema".add_column('net_protocols', 'protocol', 0, 'string', false, true, true, 'the network protocol', '1.0a100', '1.80');

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

\echo phone_numbers
select "schema".add_column('phone_numbers', 'pkey', 0, 'pkey', false, true, false, 'a generated, unique id', '1.0a100', '1.30');
select "schema".add_column('phone_numbers', 'created', 1, 'time', false, false, false, 'time the entry was created', '1.0a100', '1.30');
select "schema".add_column('phone_numbers', 'business', 2, 'string', false, false, false, 'the name of the business', '1.0a100', '1.30');
select "schema".add_column('phone_numbers', 'person', 3, 'string', false, false, false, 'the name of the individual', '1.0a100', '1.30');
select "schema".add_column('phone_numbers', 'work', 4, 'phone', false, false, false, 'the work number', '1.0a100', '1.30');
select "schema".add_column('phone_numbers', 'cell', 5, 'phone', false, false, false, 'the cell number', '1.0a100', '1.30');
select "schema".add_column('phone_numbers', 'home', 6, 'phone', false, false, false, 'the home number', '1.0a100', '1.30');
select "schema".add_column('phone_numbers', 'fax', 7, 'phone', false, false, false, 'the fax number', '1.0a100', '1.30');

\echo postgres_backups
select "schema".add_column('postgres_backups', 'pkey', 0, 'pkey', false, true, false, 'a unique, generated primary key', '1.0a100', '1.30');
select "schema".add_column('postgres_backups', 'package', 1, 'fkey', false, false, false, 'the pkey of the package that owns this backup', '1.0a100', '1.30');
select "schema".add_column('postgres_backups', 'db_name', 2, 'string', false, false, false, 'the name of the database', '1.0a100', '1.30');
select "schema".add_column('postgres_backups', 'postgres_server', 3, 'fkey', false, false, false, 'the pkey of the PostgreSQL server', '1.0a100', '1.30');
select "schema".add_column('postgres_backups', 'start_time', 4, 'time', false, false, false, 'the time the backup was started', '1.0a100', '1.30');
select "schema".add_column('postgres_backups', 'end_time', 5, 'time', false, false, false, 'the time the backup was completed', '1.0a100', '1.30');
select "schema".add_column('postgres_backups', 'backup_data', 6, 'fkey', false, false, false, 'the pkey of the backup_data', '1.0a100', '1.30');
select "schema".add_column('postgres_backups', 'backup_level', 7, 'short', false, false, false, 'the number of backup copies to store', '1.0a100', '1.30');
select "schema".add_column('postgres_backups', 'backup_retention', 8, 'short', false, false, false, 'the number of days to store the backup data', '1.0a100', '1.30');

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

\echo postgres_reserved_words
select "schema".add_column('postgres_reserved_words', 'word', 0, 'string', false, true, true, 'the word that may not be used', '1.0a100', '1.80');

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

\echo raid_types
select "schema".add_column('raid_types', 'type', 0, 'string', false, true, true, 'the unique name of the type of RAID configuration', '1.36', '1.41');
select "schema".add_column('raid_types', 'sort_order', 1, 'short', false, true, true, 'the sort order of the RAID type, those sorted higher may be substituted for those sorted lower', '1.36', '1.41');

\echo rates
select "schema".add_column('rates', 'name', 0, 'string', false, true, true, '', '1.0a100', '1.0a122');
select "schema".add_column('rates', 'display', 1, 'string', false, false, true, '', '1.0a100', '1.0a122');
select "schema".add_column('rates', 'description', 2, 'string', false, false, true, '', '1.0a100', '1.0a122');
select "schema".add_column('rates', 'unit', 3, 'string', false, false, true, '', '1.0a100', '1.0a122');
select "schema".add_column('rates', 'price', 4, 'decimal_2', false, false, true, '', '1.0a100', '1.0a122');
select "schema".add_column('rates', 'is_credit', 5, 'boolean', false, false, true, '', '1.0a100', '1.0a122');

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

\echo sendmail_smtp_stats
select "schema".add_column('sendmail_smtp_stats', 'pkey', 0, 'pkey', false, true, false, 'a generated unique key', '1.0a100', '1.30');
select "schema".add_column('sendmail_smtp_stats', 'package', 1, 'package', false, false, false, 'the package that owns this entry', '1.0a100', '1.30');
select "schema".add_column('sendmail_smtp_stats', 'date', 2, 'date', false, false, false, 'the date of the statistics', '1.0a100', '1.30');
select "schema".add_column('sendmail_smtp_stats', 'ao_server', 3, 'fkey', false, false, false, 'the pkey of the server processing the emails', '1.0a100', '1.30');
select "schema".add_column('sendmail_smtp_stats', 'email_in_count', 4, 'int', false, false, false, 'the number of emails received', '1.0a100', '1.30');
select "schema".add_column('sendmail_smtp_stats', 'excess_in_count', 5, 'int', false, false, false, 'the number of emails beyond the package limit', '1.0a100', '1.30');
select "schema".add_column('sendmail_smtp_stats', 'email_in_bandwidth', 6, 'long', false, false, false, 'the amount of bandwidth consumed', '1.0a100', '1.30');
select "schema".add_column('sendmail_smtp_stats', 'excess_in_bandwidth', 7, 'long', false, false, false, 'the amount of bandwidth beyond the package limit', '1.0a100', '1.30');
select "schema".add_column('sendmail_smtp_stats', 'email_out_count', 8, 'int', false, false, false, 'the number of emails sent', '1.0a100', '1.30');
select "schema".add_column('sendmail_smtp_stats', 'excess_out_count', 9, 'int', false, false, false, 'the number of emails beyond the package limit', '1.0a100', '1.30');
select "schema".add_column('sendmail_smtp_stats', 'email_out_bandwidth', 10, 'long', false, false, false, 'the amount of bandwidth consumed', '1.0a100', '1.30');
select "schema".add_column('sendmail_smtp_stats', 'excess_out_bandwidth', 11, 'long', false, false, false, 'the amount of bandwidth beyond the package limit', '1.0a100', '1.30');

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

\echo server_reports
select "schema".add_column('server_reports', 'pkey', 0, 'pkey', false, true, false, 'a unique, generated key', '1.0a100', '1.30');
select "schema".add_column('server_reports', 'time', 1, 'time', false, false, false, 'time these stats were reported (the ending time of the interval)', '1.0a100', '1.30');
select "schema".add_column('server_reports', 'interval', 2, 'interval', false, false, false, 'time interval in milliseconds seconds that these stats apply to', '1.0a100', '1.30');
select "schema".add_column('server_reports', 'ao_server', 3, 'fkey', false, false, false, 'the pkey of the server that these stats are for', '1.0a100', '1.30');
select "schema".add_column('server_reports', 'failover_server', 4, 'fkey', true, false, false, 'the pkey of the outer server for this server at the time of this report', '1.0a100', '1.30');

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

\echo service_levels
select "schema".add_column('service_levels', 'name', 0, 'string', false, true, true, '', '1.0a100', '1.0a122');
select "schema".add_column('service_levels', 'display', 1, 'string', false, false, true, '', '1.0a100', '1.0a122');
select "schema".add_column('service_levels', 'description', 2, 'string', false, false, true, '', '1.0a100', '1.0a122');
select "schema".add_column('service_levels', 'is_virtual', 3, 'boolean', false, false, true, '', '1.0a100', '1.0a122');

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

\echo sr_cpu
select "schema".add_column('sr_cpu', 'pkey', 0, 'pkey', false, true, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_cpu', 'server_report', 1, 'fkey', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_cpu', 'cpu_number', 2, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_cpu', 'user_min', 3, 'float', false, false, false, 'minimum user CPU %', '1.0a100', '1.30');
select "schema".add_column('sr_cpu', 'user_avg', 4, 'float', false, false, false, 'average user CPU %', '1.0a100', '1.30');
select "schema".add_column('sr_cpu', 'user_max', 5, 'float', false, false, false, 'maximum user CPU %', '1.0a100', '1.30');
select "schema".add_column('sr_cpu', 'nice_min', 6, 'float', false, false, false, 'minimum nice CPU %', '1.0a100', '1.30');
select "schema".add_column('sr_cpu', 'nice_avg', 7, 'float', false, false, false, 'average nice CPU %', '1.0a100', '1.30');
select "schema".add_column('sr_cpu', 'nice_max', 8, 'float', false, false, false, 'maximum nice CPU %', '1.0a100', '1.30');
select "schema".add_column('sr_cpu', 'sys_min', 9, 'float', false, false, false, 'minimum system CPU %', '1.0a100', '1.30');
select "schema".add_column('sr_cpu', 'sys_avg', 10, 'float', false, false, false, 'average system CPU %', '1.0a100', '1.30');
select "schema".add_column('sr_cpu', 'sys_max', 11, 'float', false, false, false, 'maximum system CPU %', '1.0a100', '1.30');

\echo sr_db_mysql
select "schema".add_column('sr_db_mysql', 'server_report', 0, 'fkey', false, true, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_db_mysql', 'conn_min', 1, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_db_mysql', 'conn_avg', 2, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_db_mysql', 'conn_max', 3, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_db_mysql', 'questions_min', 4, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_db_mysql', 'questions_avg', 5, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_db_mysql', 'questions_max', 6, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_db_mysql', 'slow_queries_min', 7, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_db_mysql', 'slow_queries_avg', 8, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_db_mysql', 'slow_queries_max', 9, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_db_mysql', 'opens_min', 10, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_db_mysql', 'opens_avg', 11, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_db_mysql', 'opens_max', 12, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_db_mysql', 'flush_min', 13, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_db_mysql', 'flush_avg', 14, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_db_mysql', 'flush_max', 15, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_db_mysql', 'open_tables_min', 16, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_db_mysql', 'open_tables_avg', 17, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_db_mysql', 'open_tables_max', 18, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_db_mysql', 'query_rate_min', 19, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_db_mysql', 'query_rate_avg', 20, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_db_mysql', 'query_rate_max', 21, 'float', false, false, false, '', '1.0a100', '1.30');

\echo sr_db_postgres
select "schema".add_column('sr_db_postgres', 'server_report', 0, 'fkey', false, true, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_db_postgres', 'conn_min', 1, 'int', false, false, false, 'minimum concurrent users', '1.0a100', '1.30');
select "schema".add_column('sr_db_postgres', 'conn_avg', 2, 'float', false, false, false, 'average concurrent users', '1.0a100', '1.30');
select "schema".add_column('sr_db_postgres', 'conn_max', 3, 'int', false, false, false, 'maximum concurrent users', '1.0a100', '1.30');

\echo sr_disk_access
select "schema".add_column('sr_disk_access', 'pkey', 0, 'pkey', false, true, false, 'a generated pkey', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'server_report', 1, 'fkey', false, false, false, 'the report this is part of', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'device_major', 2, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'device_minor', 3, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'blocks_min', 4, 'long', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'blocks_avg', 5, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'blocks_max', 6, 'long', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'rios_min', 7, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'rios_avg', 8, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'rios_max', 9, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'rmerges_min', 10, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'rmerges_avg', 11, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'rmerges_max', 12, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'rsect_min', 13, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'rsect_avg', 14, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'rsect_max', 15, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'ruse_min', 16, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'ruse_avg', 17, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'ruse_max', 18, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'wios_min', 19, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'wios_avg', 20, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'wios_max', 21, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'wmerge_min', 22, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'wmerge_avg', 23, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'wmerge_max', 24, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'wsect_min', 25, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'wsect_avg', 26, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'wsect_max', 27, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'wuse_min', 28, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'wuse_avg', 29, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'wuse_max', 30, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'running_min', 31, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'running_avg', 32, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'running_max', 33, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'use_min', 34, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'use_avg', 35, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'use_max', 36, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'aveq_min', 37, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'aveq_avg', 38, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_access', 'aveq_max', 39, 'float', false, false, false, '', '1.0a100', '1.30');

\echo sr_disk_mdstat
select "schema".add_column('sr_disk_mdstat', 'pkey', 0, 'pkey', false, true, false, 'a generated pkey', '1.0a100', '1.30');
select "schema".add_column('sr_disk_mdstat', 'server_report', 1, 'fkey', false, false, false, 'the report this is part of', '1.0a100', '1.30');
select "schema".add_column('sr_disk_mdstat', 'device_major', 2, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_mdstat', 'device_minor', 3, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_mdstat', 'total_partitions_min', 4, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_mdstat', 'total_partitions_avg', 5, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_mdstat', 'total_partitions_max', 6, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_mdstat', 'active_partitions_min', 7, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_mdstat', 'active_partitions_avg', 8, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_mdstat', 'active_partitions_max', 9, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_mdstat', 'rebuild_percent_min', 10, 'float', true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_mdstat', 'rebuild_percent_avg', 11, 'float', true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_mdstat', 'rebuild_percent_max', 12, 'float', true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_mdstat', 'rebuild_rate_min', 13, 'int', true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_mdstat', 'rebuild_rate_avg', 14, 'float', true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_mdstat', 'rebuild_rate_max', 15, 'int', true, false, false, '', '1.0a100', '1.30');

\echo sr_disk_space
select "schema".add_column('sr_disk_space', 'pkey', 0, 'pkey', false, true, false, 'a generated pkey', '1.0a100', '1.30');
select "schema".add_column('sr_disk_space', 'server_report', 1, 'fkey', false, false, false, 'the report this is part of', '1.0a100', '1.30');
select "schema".add_column('sr_disk_space', 'device_major', 2, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_space', 'device_minor', 3, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_space', 'total_min', 4, 'long', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_space', 'total_avg', 5, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_space', 'total_max', 6, 'long', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_space', 'used_min', 7, 'long', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_space', 'used_avg', 8, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_space', 'used_max', 9, 'long', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_space', 'free_min', 10, 'long', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_space', 'free_avg', 11, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_disk_space', 'free_max', 12, 'long', false, false, false, '', '1.0a100', '1.30');

\echo sr_kernel
select "schema".add_column('sr_kernel', 'server_report', 0, 'fkey', false, true, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'files_allocated_min', 1, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'files_allocated_avg', 2, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'files_allocated_max', 3, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'files_used_min', 4, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'files_used_avg', 5, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'files_used_max', 6, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'files_max_min', 7, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'files_max_avg', 8, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'files_max_max', 9, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'nr_inodes_min', 10, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'nr_inodes_avg', 11, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'nr_inodes_max', 12, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'nr_free_inodes_min', 13, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'nr_free_inodes_avg', 14, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'nr_free_inodes_max', 15, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'inode_preshrink_min', 16, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'inode_preshrink_avg', 17, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'inode_preshrink_max', 18, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'msgmax_min', 19, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'msgmax_avg', 20, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'msgmax_max', 21, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'msgmnb_min', 22, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'msgmnb_avg', 23, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'msgmnb_max', 24, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'msgmni_min', 25, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'msgmni_avg', 26, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'msgmni_max', 27, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'nr_msg_min', 28, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'nr_msg_avg', 29, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'nr_msg_max', 30, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'entropy_avail_min', 31, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'entropy_avail_avg', 32, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'entropy_avail_max', 33, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'rtsig_max_min', 34, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'rtsig_max_avg', 35, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'rtsig_max_max', 36, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'rtsig_nr_min', 37, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'rtsig_nr_avg', 38, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'rtsig_nr_max', 39, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'semmsl_min', 40, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'semmsl_avg', 41, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'semmsl_max', 42, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'semmns_min', 43, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'semmns_avg', 44, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'semmns_max', 45, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'semopm_min', 46, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'semopm_avg', 47, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'semopm_max', 48, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'semmni_min', 49, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'semmni_avg', 50, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'semmni_max', 51, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'nr_sem_min', 52, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'nr_sem_avg', 53, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'nr_sem_max', 54, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'shmall_min', 55, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'shmall_avg', 56, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'shmall_max', 57, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'shmmax_min', 58, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'shmmax_avg', 59, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'shmmax_max', 60, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'shmmni_min', 61, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'shmmni_avg', 62, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'shmmni_max', 63, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'nr_shm_min', 64, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'nr_shm_avg', 65, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'nr_shm_max', 66, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'shm_used_min', 67, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'shm_used_avg', 68, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'shm_used_max', 69, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'threads_max_min', 70, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'threads_max_avg', 71, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_kernel', 'threads_max_max', 72, 'int', false, false, false, '', '1.0a100', '1.30');

\echo sr_load
select "schema".add_column('sr_load', 'server_report', 0, 'fkey', false, true, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_load', 'min', 1, 'float', false, false, false, 'minimum load', '1.0a100', '1.30');
select "schema".add_column('sr_load', 'avg', 2, 'float', false, false, false, 'average load', '1.0a100', '1.30');
select "schema".add_column('sr_load', 'max', 3, 'float', false, false, false, 'maximum load', '1.0a100', '1.30');

\echo sr_memory
select "schema".add_column('sr_memory', 'server_report', 0, 'fkey', false, true, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'mem_total_min', 1, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'mem_total_avg', 2, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'mem_total_max', 3, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'mem_free_min', 4, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'mem_free_avg', 5, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'mem_free_max', 6, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'mem_shared_min', 7, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'mem_shared_avg', 8, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'mem_shared_max', 9, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'buffers_min', 10, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'buffers_avg', 11, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'buffers_max', 12, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'cached_min', 13, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'cached_avg', 14, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'cached_max', 15, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'swap_cached_min', 16, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'swap_cached_avg', 17, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'swap_cached_max', 18, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'active_min', 19, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'active_avg', 20, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'active_max', 21, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'inact_dirty_min', 22, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'inact_dirty_avg', 23, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'inact_dirty_max', 24, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'inact_clean_min', 25, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'inact_clean_avg', 26, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'inact_clean_max', 27, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'inact_target_min', 28, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'inact_target_avg', 29, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'inact_target_max', 30, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'high_total_min', 31, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'high_total_avg', 32, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'high_total_max', 33, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'high_free_min', 34, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'high_free_avg', 35, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'high_free_max', 36, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'low_total_min', 37, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'low_total_avg', 38, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'low_total_max', 39, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'low_free_min', 40, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'low_free_avg', 41, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_memory', 'low_free_max', 42, 'int', false, false, false, '', '1.0a100', '1.30');

\echo sr_net_devices
select "schema".add_column('sr_net_devices', 'pkey', 0, 'pkey', false, true, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'server_report', 1, 'fkey', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'device_id', 2, 'string', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'rx_bytes_min', 3, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'rx_bytes_avg', 4, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'rx_bytes_max', 5, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'rx_packets_min', 6, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'rx_packets_avg', 7, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'rx_packets_max', 8, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'rx_errors_min', 9, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'rx_errors_avg', 10, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'rx_errors_max', 11, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'rx_drop_min', 12, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'rx_drop_avg', 13, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'rx_drop_max', 14, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'rx_fifo_min', 15, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'rx_fifo_avg', 16, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'rx_fifo_max', 17, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'rx_frame_min', 18, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'rx_frame_avg', 19, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'rx_frame_max', 20, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'rx_compress_min', 21, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'rx_compress_avg', 22, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'rx_compress_max', 23, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'rx_multicast_min', 24, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'rx_multicast_avg', 25, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'rx_multicast_max', 26, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'tx_bytes_min', 27, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'tx_bytes_avg', 28, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'tx_bytes_max', 29, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'tx_packets_min', 30, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'tx_packets_avg', 31, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'tx_packets_max', 32, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'tx_errors_min', 33, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'tx_errors_avg', 34, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'tx_errors_max', 35, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'tx_drop_min', 36, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'tx_drop_avg', 37, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'tx_drop_max', 38, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'tx_fifo_min', 39, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'tx_fifo_avg', 40, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'tx_fifo_max', 41, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'tx_colls_min', 42, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'tx_colls_avg', 43, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'tx_colls_max', 44, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'tx_carrier_min', 45, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'tx_carrier_avg', 46, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'tx_carrier_max', 47, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'tx_compressed_min', 48, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'tx_compressed_avg', 49, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'tx_compressed_max', 50, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'listen_min', 51, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'listen_avg', 52, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_devices', 'listen_max', 53, 'int', false, false, false, '', '1.0a100', '1.30');

\echo sr_net_icmp
select "schema".add_column('sr_net_icmp', 'server_report', 0, 'fkey', false, true, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'in_message_min', 1, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'in_message_avg', 2, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'in_message_max', 3, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'in_fail_min', 4, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'in_fail_avg', 5, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'in_fail_max', 6, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'in_unreachable_min', 7, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'in_unreachable_avg', 8, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'in_unreachable_max', 9, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'in_timeout_min', 10, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'in_timeout_avg', 11, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'in_timeout_max', 12, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'in_quench_min', 13, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'in_quench_avg', 14, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'in_quench_max', 15, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'in_redirect_min', 16, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'in_redirect_avg', 17, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'in_redirect_max', 18, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'in_echo_request_min', 19, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'in_echo_request_avg', 20, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'in_echo_request_max', 21, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'in_echo_reply_min', 22, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'in_echo_reply_avg', 23, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'in_echo_reply_max', 24, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'out_message_min', 25, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'out_message_avg', 26, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'out_message_max', 27, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'out_fail_min', 28, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'out_fail_avg', 29, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'out_fail_max', 30, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'out_unreachable_min', 31, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'out_unreachable_avg', 32, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'out_unreachable_max', 33, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'out_timeout_min', 34, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'out_timeout_avg', 35, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'out_timeout_max', 36, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'out_redirect_min', 37, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'out_redirect_avg', 38, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'out_redirect_max', 39, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'out_echo_reply_min', 40, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'out_echo_reply_avg', 41, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_icmp', 'out_echo_reply_max', 42, 'float', false, false, false, '', '1.0a100', '1.30');

\echo sr_net_ip
select "schema".add_column('sr_net_ip', 'server_report', 0, 'fkey', false, true, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'packet_min', 1, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'packet_avg', 2, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'packet_max', 3, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'invalid_headers_min', 4, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'invalid_headers_avg', 5, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'invalid_headers_max', 6, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'forward_min', 7, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'forward_avg', 8, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'forward_max', 9, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'discard_min', 10, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'discard_avg', 11, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'discard_max', 12, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'deliver_min', 13, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'deliver_avg', 14, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'deliver_max', 15, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'request_min', 16, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'request_avg', 17, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'request_max', 18, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'out_drop_min', 19, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'out_drop_avg', 20, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'out_drop_max', 21, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'out_drop_no_route_min', 22, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'out_drop_no_route_avg', 23, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'out_drop_no_route_max', 24, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'out_drop_timeout_min', 25, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'out_drop_timeout_avg', 26, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'out_drop_timeout_max', 27, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'ra_req_min', 28, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'ra_req_avg', 29, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'ra_req_max', 30, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'ra_ok_min', 31, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'ra_ok_avg', 32, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'ra_ok_max', 33, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'ra_fail_min', 34, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'ra_fail_avg', 35, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_ip', 'ra_fail_max', 36, 'float', false, false, false, '', '1.0a100', '1.30');

\echo sr_net_tcp
select "schema".add_column('sr_net_tcp', 'server_report', 0, 'fkey', false, true, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'active_connect_min', 1, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'active_connect_avg', 2, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'active_connect_max', 3, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'passive_connect_min', 4, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'passive_connect_avg', 5, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'passive_connect_max', 6, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'fail_connect_min', 7, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'fail_connect_avg', 8, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'fail_connect_max', 9, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'in_reset_min', 10, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'in_reset_avg', 11, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'in_reset_max', 12, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'connect_min', 13, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'connect_avg', 14, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'connect_max', 15, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'segment_receive_min', 16, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'segment_receive_avg', 17, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'segment_receive_max', 18, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'segment_send_min', 19, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'segment_send_avg', 20, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'segment_send_max', 21, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'segment_resend_min', 22, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'segment_resend_avg', 23, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'segment_resend_max', 24, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'bad_segment_receive_min', 25, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'bad_segment_receive_avg', 26, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'bad_segment_receive_max', 27, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'out_reset_min', 28, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'out_reset_avg', 29, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_tcp', 'out_reset_max', 30, 'float', false, false, false, '', '1.0a100', '1.30');

\echo sr_net_udp
select "schema".add_column('sr_net_udp', 'server_report', 0, 'fkey', false, true, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_udp', 'receive_min', 1, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_udp', 'receive_avg', 2, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_udp', 'receive_max', 3, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_udp', 'unknown_min', 4, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_udp', 'unknown_avg', 5, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_udp', 'unknown_max', 6, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_udp', 'error_min', 7, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_udp', 'error_avg', 8, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_udp', 'error_max', 9, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_udp', 'send_min', 10, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_udp', 'send_avg', 11, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_net_udp', 'send_max', 12, 'float', false, false, false, '', '1.0a100', '1.30');

\echo sr_num_users
select "schema".add_column('sr_num_users', 'server_report', 0, 'fkey', false, true, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_num_users', 'min', 1, 'int', false, false, false, 'minimum concurrent users', '1.0a100', '1.30');
select "schema".add_column('sr_num_users', 'avg', 2, 'float', false, false, false, 'average concurrent users', '1.0a100', '1.30');
select "schema".add_column('sr_num_users', 'max', 3, 'int', false, false, false, 'maximum concurrent users', '1.0a100', '1.30');

\echo sr_paging
select "schema".add_column('sr_paging', 'server_report', 0, 'fkey', false, true, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_paging', 'in_min', 1, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_paging', 'in_avg', 2, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_paging', 'in_max', 3, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_paging', 'out_min', 4, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_paging', 'out_avg', 5, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_paging', 'out_max', 6, 'float', false, false, false, '', '1.0a100', '1.30');

\echo sr_processes
select "schema".add_column('sr_processes', 'server_report', 0, 'fkey', false, true, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'total_sleep_min', 1, 'int', true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'total_sleep_avg', 2, 'float', true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'total_sleep_max', 3, 'int', true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'user_sleep_min', 4, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'user_sleep_avg', 5, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'user_sleep_max', 6, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'total_run_min', 7, 'int', true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'total_run_avg', 8, 'float', true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'total_run_max', 9, 'int', true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'user_run_min', 10, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'user_run_avg', 11, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'user_run_max', 12, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'total_zombie_min', 13, 'int', true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'total_zombie_avg', 14, 'float', true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'total_zombie_max', 15, 'int', true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'user_zombie_min', 16, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'user_zombie_avg', 17, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'user_zombie_max', 18, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'total_trace_min', 19, 'int', true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'total_trace_avg', 20, 'float', true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'total_trace_max', 21, 'int', true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'user_trace_min', 22, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'user_trace_avg', 23, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'user_trace_max', 24, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'total_uninterruptible_min', 25, 'int', true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'total_uninterruptible_avg', 26, 'float', true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'total_uninterruptible_max', 27, 'int', true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'user_uninterruptible_min', 28, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'user_uninterruptible_avg', 29, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'user_uninterruptible_max', 30, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'total_unknown_min', 31, 'int', true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'total_unknown_avg', 32, 'float', true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'total_unknown_max', 33, 'int', true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'user_unknown_min', 34, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'user_unknown_avg', 35, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'user_unknown_max', 36, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'rate_min', 37, 'float', true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'rate_avg', 38, 'float', true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'rate_max', 39, 'float', true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'context_min', 40, 'float', true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'context_avg', 41, 'float', true, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_processes', 'context_max', 42, 'float', true, false, false, '', '1.0a100', '1.30');

\echo sr_swap_rate
select "schema".add_column('sr_swap_rate', 'server_report', 0, 'fkey', false, true, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_swap_rate', 'in_min', 1, 'float', false, false, false, 'minimum swap reads per second', '1.0a100', '1.30');
select "schema".add_column('sr_swap_rate', 'in_avg', 2, 'float', false, false, false, 'average swap reads per second', '1.0a100', '1.30');
select "schema".add_column('sr_swap_rate', 'in_max', 3, 'float', false, false, false, 'maximum swap reads per second', '1.0a100', '1.30');
select "schema".add_column('sr_swap_rate', 'out_min', 4, 'float', false, false, false, 'minimum swap writes per second', '1.0a100', '1.30');
select "schema".add_column('sr_swap_rate', 'out_avg', 5, 'float', false, false, false, 'average swap writes per second', '1.0a100', '1.30');
select "schema".add_column('sr_swap_rate', 'out_max', 6, 'float', false, false, false, 'maximum swap writes per second', '1.0a100', '1.30');

\echo sr_swap_size
select "schema".add_column('sr_swap_size', 'pkey', 0, 'pkey', false, true, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_swap_size', 'server_report', 1, 'fkey', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_swap_size', 'device_major', 2, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_swap_size', 'device_minor', 3, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_swap_size', 'total_min', 4, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_swap_size', 'total_avg', 5, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_swap_size', 'total_max', 6, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_swap_size', 'used_min', 7, 'int', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_swap_size', 'used_avg', 8, 'float', false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('sr_swap_size', 'used_max', 9, 'int', false, false, false, '', '1.0a100', '1.30');

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