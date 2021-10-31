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

select "schema".add_column('web.tomcat', 'httpd_workers', 'pkey',        'pkey',   false,  true, false, 'a generated, unique id', '1.0a100', '1.81.17');
select "schema".add_column('web.tomcat', 'httpd_workers', 'bind'    ,    'fkey',   false,  true, false, 'the network binding reservation and details', '1.81.18', null);
select "schema".add_column('web.tomcat', 'httpd_workers', 'code',        'string', false, false, false, 'the jk_code for the worker', '1.0a100', '1.81.17');
select "schema".add_column('web.tomcat', 'httpd_workers', 'name',        'string', false, false, false, 'the jk_code for the worker', '1.81.18', null);
select "schema".add_column('web.tomcat', 'httpd_workers', 'net_bind',    'fkey',   false,  true, false, 'the network binding reservation and details', '1.0a100', '1.81.17');
select "schema".add_column('web.tomcat', 'httpd_workers', 'tomcat_site', 'fkey',    true, false, false, 'the site that provides this worker (Tomcat 3 only)', '1.0a100', '1.81.17');
select "schema".add_column('web.tomcat', 'httpd_workers', 'tomcatSite' , 'fkey',    true, false, false, 'the site that provides this worker (Tomcat 3 only)', '1.81.18', null);
