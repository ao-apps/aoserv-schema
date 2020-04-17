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

select "schema".add_column('web', 'httpd_site_bind_redirects', 'pkey',            'pkey',    false,  true, false, 'a generated primary key',                     '1.81.1', '1.81.20');
select "schema".add_column('web', 'httpd_site_bind_redirects', 'httpd_site_bind', 'fkey',    false, false, false, 'the site bind that is being referenced',      '1.81.1', '1.81.20');
select "schema".add_column('web', 'httpd_site_bind_redirects', 'sort_order',      'short',   false, false, false, 'the per-bind unique sort ordering',           '1.81.1', '1.81.20');
select "schema".add_column('web', 'httpd_site_bind_redirects', 'pattern',         'string',  false, false, false, 'the per-bind unique pattern matched',         '1.81.1', '1.81.20');
select "schema".add_column('web', 'httpd_site_bind_redirects', 'substitution',    'string',  false, false, false, 'the redirect substitution',                   '1.81.1', '1.81.20');
select "schema".add_column('web', 'httpd_site_bind_redirects', 'comment',         'string',   true, false, false, 'an optional comment describing the redirect', '1.81.1', '1.81.20');
select "schema".add_column('web', 'httpd_site_bind_redirects', 'no_escape',       'boolean', false, false, false, 'enables the [NE] RewriteRule Flag',           '1.81.4', '1.81.20');

select "schema".add_column('web', 'RewriteRule', 'id',           'pkey',    false,  true, false, 'a generated primary key',                  '1.81.21', null);
select "schema".add_column('web', 'RewriteRule', 'virtualHost',  'fkey',    false, false, false, 'the VirtualHost this rule is applied to',  '1.81.21', null);
select "schema".add_column('web', 'RewriteRule', 'sortOrder',    'short',   false, false, false, 'the per-VirtualHost unique sort ordering', '1.81.21', null);
select "schema".add_column('web', 'RewriteRule', 'pattern',      'string',  false, false, false, 'the per-VirtualHost pattern matched',      '1.81.21', null);
select "schema".add_column('web', 'RewriteRule', 'substitution', 'string',  false, false, false, 'the rewrite substitution',                 '1.81.21', null);
select "schema".add_column('web', 'RewriteRule', 'flags',        'string',   true, false, false, 'the optional flags for the rule',          '1.81.21', null);
select "schema".add_column('web', 'RewriteRule', 'comment',      'string',   true, false, false, 'an optional comment describing the rule',  '1.81.21', null);
