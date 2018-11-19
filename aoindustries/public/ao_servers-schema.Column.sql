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
