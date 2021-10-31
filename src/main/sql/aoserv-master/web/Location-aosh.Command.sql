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
  'add_httpd_site_authenticated_location',
  'web',
  'httpd_site_authenticated_locations',
  'adds an authenticated location to a web site',
  '<i>site_name</i> <i>ao_server</i> <i>path</i> <i>is_regular_expression</i> <i>auth_name</i> {""|<i>auth_group_file</i>} {""|<i>auth_user_file</i>} <i>require</i> {""|<i>handler</i>}',
  '1.81.13',
  null
);
select aosh.add_command(
  'set_httpd_site_authenticated_location_attributes',
  'web',
  'httpd_site_authenticated_locations',
  'updates an authenticated location on a web site',
  '<i>site_name</i> <i>ao_server</i> <i>path</i> <i>is_regular_expression</i> <i>auth_name</i> {""|<i>auth_group_file</i>} {""|<i>auth_user_file</i>} <i>require</i> {""|*|<i>handler</i>}',
  '1.81.13',
  null
);
