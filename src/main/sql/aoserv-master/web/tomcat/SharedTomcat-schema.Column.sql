/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020, 2023  AO Industries, Inc.
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

select "schema".add_column('web.tomcat', 'httpd_shared_tomcats', 'pkey',                    'pkey',    false,  true, false, 'pkey for this jvm', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_shared_tomcats', 'name',                    'string',  false, false, false, 'unique name for this jvm', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_shared_tomcats', 'ao_server',               'fkey',    false, false, false, 'the pkey of the server on which this jvm resides', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_shared_tomcats', 'version',                 'fkey',    false, false, false, 'the tomcat version', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_shared_tomcats', 'linux_server_account',    'fkey',    false, false, false, 'the account under which this tomcat runs', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_shared_tomcats', 'linux_server_group',      'fkey',    false, false, false, 'the group to which this tomcat is assigned', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_shared_tomcats', 'is_secure',               'boolean', false, false, false, 'is the jvm secure', '1.0a100', '1.81.9');
select "schema".add_column('web.tomcat', 'httpd_shared_tomcats', 'is_overflow',             'boolean', false, false, false, 'is an overflow JVM for several accounts', '1.0a100', '1.81.9');
select "schema".add_column('web.tomcat', 'httpd_shared_tomcats', 'config_backup_level',     'short',   false, false, false, 'the number of copies of config backups to store', '1.0a100', '1.30');
select "schema".add_column('web.tomcat', 'httpd_shared_tomcats', 'config_backup_retention', 'short',   false, false, false, 'the number of days backups are maintained', '1.0a100', '1.30');
select "schema".add_column('web.tomcat', 'httpd_shared_tomcats', 'file_backup_level',       'short',   false, false, false, 'the number of copies of backups to store', '1.0a100', '1.30');
select "schema".add_column('web.tomcat', 'httpd_shared_tomcats', 'file_backup_retention',   'short',   false, false, false, 'the number of days backups are maintained', '1.0a100', '1.30');
select "schema".add_column('web.tomcat', 'httpd_shared_tomcats', 'log_backup_level',        'short',   false, false, false, 'the number of copies of log file backups to store', '1.0a100', '1.30');
select "schema".add_column('web.tomcat', 'httpd_shared_tomcats', 'log_backup_retention',    'short',   false, false, false, 'the number of days backups are maintained', '1.0a100', '1.30');
select "schema".add_column('web.tomcat', 'httpd_shared_tomcats', 'disable_log',             'fkey',     true, false, false, 'indicates that the JVM is disabled', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_shared_tomcats', 'tomcat4_worker',          'fkey',     true,  true, false, 'the httpd_worker for Tomcat version 4', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_shared_tomcats', 'tomcat4_shutdown_port',   'fkey',     true,  true, false, 'the port that will shut down this JVM', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_shared_tomcats', 'tomcat4_shutdown_key',    'string',   true, false, false, 'the key used to shut down the JVM', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_shared_tomcats', 'is_manual',               'boolean', false, false, false, 'the configuration files are manually maintained', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_shared_tomcats', 'maxParameterCount',       'int',      true, false, false, 'the maxParameterCount setting for this Tomcat', '1.92.0', null);
select "schema".add_column('web.tomcat', 'httpd_shared_tomcats', 'max_post_size',           'int',      true, false, false, 'the maxPostSize setting for this Tomcat', '1.80.1', null);
select "schema".add_column('web.tomcat', 'httpd_shared_tomcats', 'unpack_wars',             'boolean', false, false, false, 'the unpackWARs setting for this Tomcat', '1.80.1', null);
select "schema".add_column('web.tomcat', 'httpd_shared_tomcats', 'auto_deploy',             'boolean', false, false, false, 'the autoDeploy setting for this Tomcat', '1.80.1', null);
select "schema".add_column('web.tomcat', 'httpd_shared_tomcats', 'undeployOldVersions',     'boolean', false, false, false, 'the undeployOldVersions setting for this Tomcat', '1.92.0', null);
select "schema".add_column('web.tomcat', 'httpd_shared_tomcats', 'tomcatAuthentication',    'boolean', false, false, false, 'the tomcatAuthentication setting for this Tomcat', '1.83.2', null);
