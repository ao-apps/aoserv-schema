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

select "schema".add_column('web.tomcat', 'httpd_tomcat_std_sites', 'tomcat_site',           'fkey',    false,  true, false, 'the site that this Tomcat is running in', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_tomcat_std_sites', 'tomcat4_shutdown_port', 'fkey',     true,  true, false, 'the port that will shut down this JVM', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_tomcat_std_sites', 'tomcat4_shutdown_key',  'string',   true, false, false, 'the key used to shut down the JVM', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_tomcat_std_sites', 'max_post_size',         'int',      true, false, false, 'the maximum POST size allowed', '1.80.1', null);
select "schema".add_column('web.tomcat', 'httpd_tomcat_std_sites', 'unpack_wars',           'boolean', false, false, false, 'the unpackWARs setting for this Tomcat', '1.80.1', null);
select "schema".add_column('web.tomcat', 'httpd_tomcat_std_sites', 'auto_deploy',           'boolean', false, false, false, 'the autoDeploy setting for this Tomcat', '1.80.1', null);
select "schema".add_column('web.tomcat', 'httpd_tomcat_std_sites', 'tomcatAuthentication',  'boolean', false, false, false, 'the tomcatAuthentication setting for this Tomcat', '1.83.2', null);
