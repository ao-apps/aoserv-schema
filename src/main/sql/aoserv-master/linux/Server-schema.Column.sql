/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020, 2021  AO Industries, Inc.
 *     support@aoindustries.com
 *     7262 Bull Pen Cir
 *     Mobile, AL 36695
 *
 * This file is part of aoserv-schema.
 *
 * aoserv-schema is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * aoserv-schema is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with aoserv-schema.  If not, see <https://www.gnu.org/licenses/>.
 */

select "schema".add_column('linux', 'ao_servers', 'server',                   'fkey',            false,  true, false, 'a reference to servers', '1.0a100', null);
select "schema".add_column('linux', 'ao_servers', 'num_cpu',                  'int',             false, false, false, 'the number of CPUs in the machine', '1.0a100', '1.30');
select "schema".add_column('linux', 'ao_servers', 'cpu_speed',                'int',             false, false, false, 'the speed of each CPU in MHz', '1.0a100', '1.30');
select "schema".add_column('linux', 'ao_servers', 'ram',                      'int',             false, false, false, 'the amount of RAM in megabytes', '1.0a100', '1.30');
select "schema".add_column('linux', 'ao_servers', 'rack',                     'int',              true, false, false, 'the rack space used in units of 1U', '1.0a100', '1.30');
select "schema".add_column('linux', 'ao_servers', 'disk',                     'int',             false, false, false, 'the total amount of physical disk space in gigabytes', '1.0a100', '1.30');
select "schema".add_column('linux', 'ao_servers', 'wildcard_https',           'string',           true, false, false, 'the domain for wildcard certificates', '1.0a100', '1.30');
select "schema".add_column('linux', 'ao_servers', 'is_interbase',             'boolean',         false, false, false, 'if is an InterBase server', '1.0a100', '1.30');
select "schema".add_column('linux', 'ao_servers', 'is_dns',                   'boolean',         false, false, false, 'if is a DNS server', '1.0a100', '1.30');
select "schema".add_column('linux', 'ao_servers', 'is_mysql',                 'boolean',         false, false, false, 'if is a MySQL server', '1.0a100', '1.3');
select "schema".add_column('linux', 'ao_servers', 'is_router',                'boolean',         false, false, false, 'if is a router for networking', '1.0a100', '1.30');
select "schema".add_column('linux', 'ao_servers', 'iptables_name',            'string',          false,  true, false, 'a unique name for use as a iptables ruleset name', '1.0a100', '1.30');
select "schema".add_column('linux', 'ao_servers', 'hostname',                 'hostname',        false,  true, false, 'the unique hostname of the server', '1.31', '1.68');
select "schema".add_column('linux', 'ao_servers', 'hostname',                 'domain_name',     false,  true, false, 'the unique hostname of the server', '1.69', null);
select "schema".add_column('linux', 'ao_servers', 'daemon_bind',              'fkey',             true, false, false, 'the network bind info for the AOServ Daemon', '1.0a100', null);
select "schema".add_column('linux', 'ao_servers', 'daemon_key',               'string',          false, false, false, E'the crypt''ed key used to connect to this server,\nthis info MUST be filtered because it grants\ncomplete control over the server.', '1.0a100', '1.68');
select "schema".add_column('linux', 'ao_servers', 'daemon_key',               'hashed_password', false, false, false, E'the hashed key used to connect to this server,\nthis info MUST be filtered because it grants\ncomplete control over the server.', '1.69', '1.83.2');
select "schema".add_column('linux', 'ao_servers', 'pool_size',                'int',             false, false, false, 'the recommended connection pool size for the AOServ Master', '1.0a100', null);
select "schema".add_column('linux', 'ao_servers', 'distro_hour',              'int',             false, false, false, 'the hour the distribution will occur, in server time zone', '1.0a100', null);
select "schema".add_column('linux', 'ao_servers', 'last_distro_time',         'time',             true, false, false, 'the time the last distro check was started', '1.0a100', null);
select "schema".add_column('linux', 'ao_servers', 'failover_server',          'fkey',             true, false, false, 'the server that is currently running this server', '1.0a100', null);
select "schema".add_column('linux', 'ao_servers', 'server_report_delay',      'int',             false, false, false, 'the number of milliseconds between system resource polls', '1.0a100', '1.30');
select "schema".add_column('linux', 'ao_servers', 'server_report_interval',   'int',             false, false, false, 'the number of polls between database update', '1.0a100', '1.30');
select "schema".add_column('linux', 'ao_servers', 'is_qmail',                 'boolean',         false, false, false, 'indicates that this server runs qmail, not sendmail', '1.0a100', '1.30');
select "schema".add_column('linux', 'ao_servers', 'daemon_device_id',         'string',          false, false, false, 'the device name the master connects to', '1.0a100', '1.81.17');
select "schema".add_column('linux', 'ao_servers', 'daemonDeviceId',           'string',          false, false, false, 'the device name the master connects to', '1.81.18', null);
select "schema".add_column('linux', 'ao_servers', 'xeroscape_name',           'string',           true,  true, false, '', '1.0a100', '1.30');
select "schema".add_column('linux', 'ao_servers', 'value',                    'decimal_2',       false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('linux', 'ao_servers', 'monitoring_enabled',       'boolean',         false, false, false, 'indicates that this server should be monitored', '1.0a100', '1.30');
select "schema".add_column('linux', 'ao_servers', 'emailmon_password',        'string',          false, false, false, 'the password used for email monitoring', '1.0a104', '1.0a107');
select "schema".add_column('linux', 'ao_servers', 'emailmon_password',        'string',           true, false, false, 'the password used for email monitoring', '1.0a108', '1.30');
select "schema".add_column('linux', 'ao_servers', 'ftpmon_password',          'string',          false, false, false, 'the password used for FTP monitoring', '1.0a104', '1.0a107');
select "schema".add_column('linux', 'ao_servers', 'ftpmon_password',          'string',           true, false, false, 'the password used for FTP monitoring', '1.0a108', '1.30');
select "schema".add_column('linux', 'ao_servers', 'daemon_connect_bind',      'fkey',             true, false, false, 'the bind to connect to', '1.0a119', null);
select "schema".add_column('linux', 'ao_servers', 'time_zone',                'string',           true, false, false, 'the time zone setting for the server', '1.2', null);
select "schema".add_column('linux', 'ao_servers', 'jilter_bind',              'fkey',             true, false, false, 'the bind that sendmail uses to connect to jilter', '1.7', null);
select "schema".add_column('linux', 'ao_servers', 'restrict_outbound_email',  'boolean',         false, false, false, 'controls if outbound email may only come from address hosted on this machine', '1.8', null);
select "schema".add_column('linux', 'ao_servers', 'daemon_connect_address',   'string',           true, false, false, 'provides a specific address to use for connecting to AOServDaemon', '1.11', '1.68');
select "schema".add_column('linux', 'ao_servers', 'daemon_connect_address',   'hostname',         true, false, false, 'provides a specific hostname or address to use for connecting to AOServDaemon', '1.69', null);
select "schema".add_column('linux', 'ao_servers', 'failover_batch_size',      'int',             false, false, false, 'the batch size used for failover replications coming from this server', '1.12', null);
select "schema".add_column('linux', 'ao_servers', 'monitoring_load_low',      'float',            true, false, false, 'the 5-minute load average that will trigger a low-level alert', '1.35', null);
select "schema".add_column('linux', 'ao_servers', 'monitoring_load_medium',   'float',            true, false, false, 'the 5-minute load average that will trigger a medium-level alert', '1.35', null);
select "schema".add_column('linux', 'ao_servers', 'monitoring_load_high',     'float',            true, false, false, 'the 5-minute load average that will trigger a high-level alert', '1.35', null);
select "schema".add_column('linux', 'ao_servers', 'monitoring_load_critical', 'float',            true, false, false, 'the 5-minute load average that will trigger a critical-level alert', '1.35', null);
select "schema".add_column('linux', 'ao_servers', 'uid_min',                  'linux_id',        false, false, false, 'the min value for automatic uid selection in useradd', '1.80', '1.81.17');
select "schema".add_column('linux', 'ao_servers', 'uidMin',                   'linux_id',        false, false, false, 'the min value for automatic uid selection in useradd', '1.81.18', null);
select "schema".add_column('linux', 'ao_servers', 'gid_min',                  'linux_id',        false, false, false, 'the min value for automatic gid selection in groupadd', '1.80', '1.81.17');
select "schema".add_column('linux', 'ao_servers', 'gidMin',                   'linux_id',        false, false, false, 'the min value for automatic gid selection in groupadd', '1.81.18', null);
select "schema".add_column('linux', 'ao_servers', 'uidMax',                   'linux_id',        false, false, false, 'the max value for automatic uid selection in useradd', '1.81.18', null);
select "schema".add_column('linux', 'ao_servers', 'gidMax',                   'linux_id',        false, false, false, 'the max value for automatic gid selection in groupadd', '1.81.18', null);
select "schema".add_column('linux', 'ao_servers', 'lastUid',                  'linux_id',         true, false, false, 'the last value for automatic uid selection in useradd, if any', '1.81.18', null);
select "schema".add_column('linux', 'ao_servers', 'lastGid',                  'linux_id',         true, false, false, 'the last value for automatic gid selection in groupadd, if any', '1.81.18', null);
select "schema".add_column('linux', 'ao_servers', 'sftp_umask',               'octal_long',       true, false, false, 'the optional umask for the sftp-server', '1.81.5', null);
