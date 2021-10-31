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
 * along with aoserv-schema.  If not, see <https://www.gnu.org/licenses/>.
 */

select "schema".add_column('web', 'httpd_servers', 'pkey',                            'pkey',     false,  true, false, 'a generated unique number', '1.0a100', null);
select "schema".add_column('web', 'httpd_servers', 'ao_server',                       'fkey',     false, false, false, 'the pkey of the server that hosts the httpd', '1.0a100', null);
select "schema".add_column('web', 'httpd_servers', 'number',                          'int',      false, false, false, 'the number of the instance on the server', '1.0a100', '1.81.7');
select "schema".add_column('web', 'httpd_servers', 'name',                            'string',    true, false, false, 'the name of the instance on the server, null for the default instance', '1.81.8', null);
select "schema".add_column('web', 'httpd_servers', 'can_add_sites',                   'boolean',  false, false, false, 'indicated that more sites may be added to the server', '1.0a100', null);
select "schema".add_column('web', 'httpd_servers', 'is_mod_jk',                       'boolean',  false, false, false, 'does this server use mod_jk and support AJP1.3', '1.0a100', '1.81.9');
select "schema".add_column('web', 'httpd_servers', 'max_binds',                       'int',      false, false, false, 'the maximum number of httpd_site_binds on this server', '1.0a100', '1.81.9');
select "schema".add_column('web', 'httpd_servers', 'linux_server_account',            'fkey',     false, false, false, 'the account to run as', '1.0a102', null);
select "schema".add_column('web', 'httpd_servers', 'linux_server_group',              'fkey',     false, false, false, 'the group to run as', '1.0a102', null);
select "schema".add_column('web', 'httpd_servers', 'mod_php_version',                 'fkey',      true, false, false, 'the version of mod_php to run', '1.0a102', null);
select "schema".add_column('web', 'httpd_servers', 'use_suexec',                      'boolean',  false, false, false, 'indicates that the suexec wrapper will be used for CGI', '1.0a102', null);
select "schema".add_column('web', 'httpd_servers', 'package',                         'fkey',     false, false, false, 'the package that owns the server', '1.0a102', null);
select "schema".add_column('web', 'httpd_servers', 'price',                           'decimal_2', true, false, false, 'the price monthly charged for the server instance', '1.0a102', '1.0a122');
select "schema".add_column('web', 'httpd_servers', 'is_shared',                       'boolean',  false, false, false, 'indicates that any user on the server may use this httpd instance', '1.0a102', null);
select "schema".add_column('web', 'httpd_servers', 'use_mod_perl',                    'boolean',  false, false, false, '', '1.0a103', null);
select "schema".add_column('web', 'httpd_servers', 'timeout',                         'int',      false, false, false, 'the timeout setting in seconds', '1.0a130', null);
select "schema".add_column('web', 'httpd_servers', 'max_concurrency',                 'int',      false, false, false, 'the maximum number of processes/threads for this server instance', '1.68', null);
select "schema".add_column('web', 'httpd_servers', 'monitoring_concurrency_low',      'int',       true, false, false, 'the concurrency that will trigger a low-level alert',      '1.81.11', null);
select "schema".add_column('web', 'httpd_servers', 'monitoring_concurrency_medium',   'int',       true, false, false, 'the concurrency that will trigger a medium-level alert',   '1.81.11', null);
select "schema".add_column('web', 'httpd_servers', 'monitoring_concurrency_high',     'int',       true, false, false, 'the concurrency that will trigger a high-level alert',     '1.81.11', null);
select "schema".add_column('web', 'httpd_servers', 'monitoring_concurrency_critical', 'int',       true, false, false, 'the concurrency that will trigger a critical-level alert', '1.81.11', null);
select "schema".add_column('web', 'httpd_servers', 'mod_access_compat',               'boolean',   true, false, false, 'manually enables or disables the mod_access_compat Apache module for this server instance',   '1.81.7',  null);
select "schema".add_column('web', 'httpd_servers', 'mod_actions',                     'boolean',   true, false, false, 'manually enables or disables the mod_actions Apache module for this server instance',         '1.81.7',  null);
select "schema".add_column('web', 'httpd_servers', 'mod_alias',                       'boolean',   true, false, false, 'manually enables or disables the mod_alias Apache module for this server instance',           '1.81.7',  null);
select "schema".add_column('web', 'httpd_servers', 'mod_auth_basic',                  'boolean',   true, false, false, 'manually enables or disables the mod_auth_basic Apache module for this server instance',      '1.81.7',  null);
select "schema".add_column('web', 'httpd_servers', 'mod_authn_core',                  'boolean',   true, false, false, 'manually enables or disables the mod_authn_core Apache module for this server instance',      '1.81.7',  null);
select "schema".add_column('web', 'httpd_servers', 'mod_authn_file',                  'boolean',   true, false, false, 'manually enables or disables the mod_authn_file Apache module for this server instance',      '1.81.7',  null);
select "schema".add_column('web', 'httpd_servers', 'mod_authz_core',                  'boolean',   true, false, false, 'manually enables or disables the mod_authz_core Apache module for this server instance',      '1.81.7',  null);
select "schema".add_column('web', 'httpd_servers', 'mod_authz_groupfile',             'boolean',   true, false, false, 'manually enables or disables the mod_authz_groupfile Apache module for this server instance', '1.81.7',  null);
select "schema".add_column('web', 'httpd_servers', 'mod_authz_host',                  'boolean',   true, false, false, 'manually enables or disables the mod_authz_host Apache module for this server instance',      '1.81.7',  null);
select "schema".add_column('web', 'httpd_servers', 'mod_authz_user',                  'boolean',   true, false, false, 'manually enables or disables the mod_authz_user Apache module for this server instance',      '1.81.7',  null);
select "schema".add_column('web', 'httpd_servers', 'mod_autoindex',                   'boolean',   true, false, false, 'manually enables or disables the mod_autoindex Apache module for this server instance',       '1.81.7',  null);
select "schema".add_column('web', 'httpd_servers', 'mod_deflate',                     'boolean',   true, false, false, 'manually enables or disables the mod_deflate Apache module for this server instance',         '1.81.7',  null);
select "schema".add_column('web', 'httpd_servers', 'mod_dir',                         'boolean',   true, false, false, 'manually enables or disables the mod_dir Apache module for this server instance',             '1.81.7',  null);
select "schema".add_column('web', 'httpd_servers', 'mod_filter',                      'boolean',   true, false, false, 'manually enables or disables the mod_filter Apache module for this server instance',          '1.81.7',  null);
select "schema".add_column('web', 'httpd_servers', 'mod_headers',                     'boolean',   true, false, false, 'manually enables or disables the mod_headers Apache module for this server instance',         '1.81.7',  null);
select "schema".add_column('web', 'httpd_servers', 'mod_include',                     'boolean',   true, false, false, 'manually enables or disables the mod_include Apache module for this server instance',         '1.81.7',  null);
select "schema".add_column('web', 'httpd_servers', 'mod_jk',                          'boolean',   true, false, false, 'manually enables or disables the mod_jk Apache module for this server instance',              '1.81.7',  null);
select "schema".add_column('web', 'httpd_servers', 'mod_log_config',                  'boolean',   true, false, false, 'manually enables or disables the mod_log_config Apache module for this server instance',      '1.81.7',  null);
select "schema".add_column('web', 'httpd_servers', 'mod_mime',                        'boolean',   true, false, false, 'manually enables or disables the mod_mime Apache module for this server instance',            '1.81.7',  null);
select "schema".add_column('web', 'httpd_servers', 'mod_mime_magic',                  'boolean',   true, false, false, 'manually enables or disables the mod_mime_magic Apache module for this server instance',      '1.81.7',  null);
select "schema".add_column('web', 'httpd_servers', 'mod_negotiation',                 'boolean',   true, false, false, 'manually enables or disables the mod_negotiation Apache module for this server instance',     '1.81.7',  null);
select "schema".add_column('web', 'httpd_servers', 'mod_proxy',                       'boolean',   true, false, false, 'manually enables or disables the mod_proxy Apache module for this server instance',           '1.81.7',  null);
select "schema".add_column('web', 'httpd_servers', 'mod_proxy_http',                  'boolean',   true, false, false, 'manually enables or disables the mod_proxy_http Apache module for this server instance',      '1.81.7',  null);
select "schema".add_column('web', 'httpd_servers', 'mod_reqtimeout',                  'boolean',   true, false, false, 'manually enables or disables the mod_reqtimeout Apache module for this server instance',      '1.81.7',  null);
select "schema".add_column('web', 'httpd_servers', 'mod_rewrite',                     'boolean',   true, false, false, 'manually enables or disables the mod_rewrite Apache module for this server instance',         '1.81.7',  null);
select "schema".add_column('web', 'httpd_servers', 'mod_setenvif',                    'boolean',   true, false, false, 'manually enables or disables the mod_setenvif Apache module for this server instance',        '1.81.7',  null);
select "schema".add_column('web', 'httpd_servers', 'mod_socache_shmcb',               'boolean',   true, false, false, 'manually enables or disables the mod_socache_shmcb Apache module for this server instance',   '1.81.7',  null);
select "schema".add_column('web', 'httpd_servers', 'mod_ssl',                         'boolean',   true, false, false, 'manually enables or disables the mod_ssl Apache module for this server instance',             '1.81.7',  null);
select "schema".add_column('web', 'httpd_servers', 'mod_status',                      'boolean',   true, false, false, 'manually enables or disables the mod_status Apache module for this server instance',          '1.81.7',  null);
select "schema".add_column('web', 'httpd_servers', 'mod_wsgi',                        'boolean',   true, false, false, 'manually enables or disables the mod_wsgi Apache module for this server instance',            '1.81.10', null);
