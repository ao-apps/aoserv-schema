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

select "schema".add_column('web', 'httpd_site_binds', 'pkey',                         'pkey',    false,  true, false, 'a generated primary key',                         '1.0a100', null);
select "schema".add_column('web', 'httpd_site_binds', 'httpd_site',                   'fkey',    false, false, false, 'the site that is being referenced',               '1.0a100', null);
select "schema".add_column('web', 'httpd_site_binds', 'httpd_bind',                   'fkey',    false, false, false, 'the IP and port information for the binding',     '1.0a100', null);
select "schema".add_column('web', 'httpd_site_binds', 'name',                         'string',   true, false, false, 'the name of the bind, null for the default bind', '1.81.14', null);
select "schema".add_column('web', 'httpd_site_binds', 'access_log',                   'path',    false, false, false, 'the file used for access logging',                '1.0a100', null);
select "schema".add_column('web', 'httpd_site_binds', 'error_log',                    'path',    false, false, false, 'the file used for error logging',                 '1.0a100', null);
select "schema".add_column('web', 'httpd_site_binds', 'certificate',                  'fkey',     true, false, false, 'the certificate used by this bind',               '1.81.10', null);
select "schema".add_column('web', 'httpd_site_binds', 'ssl_cert_file',                'path',     true, false, false, 'the file holding the public key (HTTPS only)',    '1.0a100', '1.81.9');
select "schema".add_column('web', 'httpd_site_binds', 'ssl_cert_key_file',            'path',     true, false, false, 'the file holding the private key (HTTPS only)',   '1.0a100', '1.81.9');
select "schema".add_column('web', 'httpd_site_binds', 'ssl_cert_chain_file',          'path',     true, false, false, 'the file holding the CA chain (HTTPS only)',      '1.81.4',  '1.81.9');
select "schema".add_column('web', 'httpd_site_binds', 'disable_log',                  'fkey',     true, false, false, 'indicates that this bind is disabled',            '1.0a100', null);
select "schema".add_column('web', 'httpd_site_binds', 'predisable_config',            'string',   true, false, false, 'the config file before the site was disabled',    '1.0a100', null);
select "schema".add_column('web', 'httpd_site_binds', 'is_manual',                    'boolean', false, false, false, 'the config file is manually maintained',          '1.0a100', null);
select "schema".add_column('web', 'httpd_site_binds', 'redirect_to_primary_hostname', 'boolean', false, false, false, 'tells that system to redirect any request that is not to either the IP address or the primary hostname to the primary hostname, while leaving the request path intact', '1.19', null);
select "schema".add_column('web', 'httpd_site_binds', 'include_site_config',          'string',   true, false, false, 'controls whether this bind includes the per-site configuration file', '1.81.10', null);
