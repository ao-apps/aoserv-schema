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

select "schema".add_column('web.tomcat', 'httpd_tomcat_contexts', 'pkey',                  'pkey',    false , true, false, 'a generated unique key', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_tomcat_contexts', 'tomcat_site',           'fkey',    false, false, false, 'the site this context is part of', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_tomcat_contexts', 'class_name',            'string',   true, false, false, 'the className attribute', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_tomcat_contexts', 'cookies',               'boolean', false, false, false, 'the cookies attribute', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_tomcat_contexts', 'cross_context',         'boolean', false, false, false, 'the crossContext attribute', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_tomcat_contexts', 'doc_base',              'string',  false, false, false, 'the docBase attribute', '1.0a100', '1.80');
select "schema".add_column('web.tomcat', 'httpd_tomcat_contexts', 'doc_base',              'path',    false, false, false, 'the docBase attribute', '1.80.0', null);
select "schema".add_column('web.tomcat', 'httpd_tomcat_contexts', 'override',              'boolean', false, false, false, 'the override attribute', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_tomcat_contexts', 'path',                  'string',  false, false, false, 'the path attribute', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_tomcat_contexts', 'privileged',            'boolean', false, false, false, 'the privileged attribute', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_tomcat_contexts', 'reloadable',            'boolean', false, false, false, 'the reloadable attribute', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_tomcat_contexts', 'use_naming',            'boolean', false, false, false, 'the useNaming attribute', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_tomcat_contexts', 'wrapper_class',         'string',   true, false, false, 'the wrapperClass attribute', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_tomcat_contexts', 'debug',                 'int',     false, false, false, 'the debug attribute', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_tomcat_contexts', 'work_dir',              'path',     true, false, false, 'the workDir attribute', '1.0a100', null);
select "schema".add_column('web.tomcat', 'httpd_tomcat_contexts', 'server_xml_configured', 'boolean', false, false, false, 'flag setting if the context is written into conf/server.xml', '1.81.3', null);
