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

select "schema".add_column('web.tomcat', 'httpd_tomcat_parameters', 'pkey',           'pkey',    false,  true, false, 'a generated unique key', '1.5', null);
select "schema".add_column('web.tomcat', 'httpd_tomcat_parameters', 'tomcat_context', 'fkey',    false, false, false, 'the context this parameter is for', '1.5', null);
select "schema".add_column('web.tomcat', 'httpd_tomcat_parameters', 'name',           'string',  false, false, false, 'the name of the context initialization parameter to be created', '1.5', null);
select "schema".add_column('web.tomcat', 'httpd_tomcat_parameters', 'value',          'string',  false, false, false, 'the parameter value that will be presented to the application when requested by calling ServletContext.getInitParameter()', '1.5', null);
select "schema".add_column('web.tomcat', 'httpd_tomcat_parameters', 'override',       'boolean', false, false, false, 'set this to false if you do not want a <context-param> for the same parameter name, found in the web application deployment descriptor, to override the value specified here. By default, overrides are allowed.', '1.5', null);
select "schema".add_column('web.tomcat', 'httpd_tomcat_parameters', 'description',    'string',   true, false, false, 'optional, human-readable description of this context initialization parameter', '1.5', null);
