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

select aosh.add_command(
  'set_httpd_tomcat_site_use_apache',
  'web.tomcat',
  'httpd_tomcat_sites',
  'sets the use_apache flag for a Tomcat-enabled web site',
  '<i>site_name</i> <i>ao_server</i> <i>use_apache</i>',
  '1.80.1',
  null
);
select aosh.add_command(
  'set_httpd_tomcat_site_block_webinf',
  'web.tomcat',
  'httpd_tomcat_sites',
  'sets the block_webinf flag for a Tomcat-enabled web site',
  '<i>site_name</i> <i>ao_server</i> <i>block_webinf</i>',
  '1.81.6',
  null
);
select aosh.add_command(
  'start_jvm',
  'web.tomcat',
  'httpd_tomcat_sites',
  'starts the Java VM',
  '<i>site_name</i> <i>ao_server</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'stop_jvm',
  'web.tomcat',
  'httpd_tomcat_sites',
  'stops the Java VM',
  '<i>site_name</i> <i>ao_server</i>',
  '1.0a100',
  null
);
