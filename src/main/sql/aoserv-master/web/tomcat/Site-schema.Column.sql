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

select "schema".add_column('web.tomcat', 'httpd_tomcat_sites', 'httpd_site',   'fkey',    false,  true, false, 'the site that this Tomcat is running in', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_tomcat_sites', 'version',      'fkey',    false, false, false, 'the version of tomcat that is being ran', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_tomcat_sites', 'use_apache',   'boolean', false, false, false, 'determines if Apache serves the static site content', '1.0a100', '1.81.5');
select "schema".add_column('web.tomcat', 'httpd_tomcat_sites', 'block_webinf', 'boolean', false, false, false, 'Blocks access to /META-INF and /WEB-INF at the Apache level.', '1.81.6', null);
