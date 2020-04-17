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

select "schema".add_column('web', 'httpd_site_authenticated_locations', 'pkey',                  'pkey',    false,  true, false, 'a generated primary key',                                                                    '1.18',    null);
select "schema".add_column('web', 'httpd_site_authenticated_locations', 'httpd_site',            'fkey',    false, false, false, 'the site that is being referenced',                                                          '1.18',    null);
select "schema".add_column('web', 'httpd_site_authenticated_locations', 'path',                  'string',  false, false, false, 'the path to protect, unique per httpd_site',                                                 '1.18',    null);
select "schema".add_column('web', 'httpd_site_authenticated_locations', 'is_regular_expression', 'boolean', false, false, false, 'regular expressions may be used, resulting in LocationMatch directives instead of Location', '1.18',    null);
select "schema".add_column('web', 'httpd_site_authenticated_locations', 'auth_name',             'string',  false, false, false, 'the prompt given to the user during authentication',                                         '1.18',    null);
select "schema".add_column('web', 'httpd_site_authenticated_locations', 'auth_group_file',       'path',    false, false, false, 'the full path to the file containing the group list',                                        '1.18',    null);
select "schema".add_column('web', 'httpd_site_authenticated_locations', 'auth_user_file',        'path',    false, false, false, 'the full path to the file containing the user list',                                         '1.18',    null);
select "schema".add_column('web', 'httpd_site_authenticated_locations', 'require',               'string',  false, false, false, 'the require directive parameter(s) for Apache',                                              '1.18',    null);
select "schema".add_column('web', 'httpd_site_authenticated_locations', 'handler',               'string',   true, false, false, 'the optional handler for this location',                                                     '1.81.13', null);
