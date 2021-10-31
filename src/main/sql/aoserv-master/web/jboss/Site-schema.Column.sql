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

select "schema".add_column('web.jboss', 'httpd_jboss_sites', 'tomcat_site',     'pkey', false,  true, false, 'the tomcat site', '1.0a100', null);
select "schema".add_column('web.jboss', 'httpd_jboss_sites', 'version',         'fkey', false, false, false, 'reference to httpd_jboss_versions', '1.0a100', null);
select "schema".add_column('web.jboss', 'httpd_jboss_sites', 'jnp_bind',        'fkey', false, false, false, 'reference to net_binds', '1.0a100', null);
select "schema".add_column('web.jboss', 'httpd_jboss_sites', 'webserver_bind',  'fkey', false, false, false, 'reference to net_binds', '1.0a100', null);
select "schema".add_column('web.jboss', 'httpd_jboss_sites', 'rmi_bind',        'fkey', false, false, false, 'reference to net_binds', '1.0a100', null);
select "schema".add_column('web.jboss', 'httpd_jboss_sites', 'hypersonic_bind', 'fkey', false, false, false, 'reference to net_binds', '1.0a100', null);
select "schema".add_column('web.jboss', 'httpd_jboss_sites', 'jmx_bind',        'fkey', false, false, false, 'reference to net_binds', '1.0a100', null);
