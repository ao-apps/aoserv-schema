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

select aosh.add_command(
  'add_httpd_tomcat_context',
  'web.tomcat',
  'httpd_tomcat_contexts',
  'adds a context (webapp) to a Tomcat site',
  '<i>site_name</i> <i>ao_server</i> {""|<i>class_name</i>} <i>use_cookies</i> <i>cross_context</i> <i>doc_base</i> <i>allow_override</i> <i>path</i> <i>is_privileged</i> <i>is_reloadable</i> <i>use_naming</i> {""|<i>wrapper_class</i>} <i>debug_level</i> {""|<i>work_dir</i>}',
  '1.0a100',
  '1.81.2'
);
select aosh.add_command(
  'add_httpd_tomcat_context',
  'web.tomcat',
  'httpd_tomcat_contexts',
  'adds a context (webapp) to a Tomcat site',
  '<i>site_name</i> <i>ao_server</i> {""|<i>class_name</i>} <i>use_cookies</i> <i>cross_context</i> <i>doc_base</i> <i>allow_override</i> <i>path</i> <i>is_privileged</i> <i>is_reloadable</i> <i>use_naming</i> {""|<i>wrapper_class</i>} <i>debug_level</i> {""|<i>work_dir</i>} <i>server_xml_configured</i>',
  '1.81.3',
  null
);
select aosh.add_command(
  'remove_httpd_tomcat_context',
  'web.tomcat',
  'httpd_tomcat_contexts',
  'removes a context (webapp) from a Tomcat site',
  '<i>pkey</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_httpd_tomcat_context_attributes',
  'web.tomcat',
  'httpd_tomcat_contexts',
  'sets the attributes for a context (webapp) on a Tomcat site',
  '<i>site_name</i> <i>ao_server</i> <i>old_path</i> {""|<i>class_name</i>} <i>use_cookies</i> <i>cross_context</i> <i>doc_base</i> <i>allow_override</i> <i>new_path</i> <i>is_privileged</i> <i>is_reloadable</i> <i>use_naming</i> {""|<i>wrapper_class</i>} <i>debug_level</i> {""|<i>work_dir</i>}',
  '1.0a100',
  '1.81.2'
);
select aosh.add_command(
  'set_httpd_tomcat_context_attributes',
  'web.tomcat',
  'httpd_tomcat_contexts',
  'sets the attributes for a context (webapp) on a Tomcat site',
  '<i>site_name</i> <i>ao_server</i> <i>old_path</i> {""|<i>class_name</i>} <i>use_cookies</i> <i>cross_context</i> <i>doc_base</i> <i>allow_override</i> <i>new_path</i> <i>is_privileged</i> <i>is_reloadable</i> <i>use_naming</i> {""|<i>wrapper_class</i>} <i>debug_level</i> {""|<i>work_dir</i>} <i>server_xml_configured</i>',
  '1.81.3',
  null
);
