/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020  AO Industries, Inc.
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
 * along with aoserv-schema.  If not, see <http://www.gnu.org/licenses/>.
 */

select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'ao_server',               'linux',      'ao_servers',            'server',  '1.0a100', null);
select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'version',                 'web.tomcat', 'httpd_tomcat_versions', 'version', '1.0a100', null);
select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'linux_server_account',    'linux',      'linux_server_accounts', 'pkey',    '1.0a100', null);
select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'linux_server_group',      'linux',      'linux_server_groups',   'pkey',    '1.0a100', null);
select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'config_backup_level',     'backup',     'backup_levels',         'level',   '1.0a100', '1.30');
select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'config_backup_retention', 'backup',     'backup_retentions',     'days',    '1.0a100', '1.30');
select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'file_backup_level',       'backup',     'backup_levels',         'level',   '1.0a100', '1.30');
select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'file_backup_retention',   'backup',     'backup_retentions',     'days',    '1.0a100', '1.30');
select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'log_backup_level',        'backup',     'backup_levels',         'level',   '1.0a100', '1.30');
select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'log_backup_retention',    'backup',     'backup_retentions',     'days',    '1.0a100', '1.30');
select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'disable_log',             'account',    'disable_log',           'pkey',    '1.0a100', null);
select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'tomcat4_worker',          'web.tomcat', 'httpd_workers',         'pkey',    '1.0a100', '1.81.17');
select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'tomcat4_worker',          'web.tomcat', 'httpd_workers',         'bind',    '1.81.18', null);
select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'tomcat4_shutdown_port',   'net',        'net_binds',             'pkey',    '1.0a100', '1.81.17');
select "schema".add_foreign_key('web.tomcat', 'httpd_shared_tomcats', 'tomcat4_shutdown_port',   'net',        'net_binds',             'id',      '1.81.18', null);
