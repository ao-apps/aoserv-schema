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

select "schema".add_column('web', 'httpd_site_bind_headers', 'pkey',            'pkey',    false,  true, false, 'a generated primary key',                     '1.81.15', null);
select "schema".add_column('web', 'httpd_site_bind_headers', 'httpd_site_bind', 'fkey',    false, false, false, 'the site bind that is being referenced',      '1.81.15', null);
select "schema".add_column('web', 'httpd_site_bind_headers', 'sort_order',      'short',   false, false, false, 'the per-bind unique sort ordering',           '1.81.15', null);
select "schema".add_column('web', 'httpd_site_bind_headers', 'type',            'string',  false, false, false, 'the type of header, either "Header" or "RequestHeader"', '1.81.15', null);
select "schema".add_column('web', 'httpd_site_bind_headers', 'always',          'boolean', false, false, false, 'the condition is either "onsuccess" (default, can be omitted) or "always"', '1.81.15', null);
select "schema".add_column('web', 'httpd_site_bind_headers', 'action',          'string',  false, false, false, 'the action to be performed',                  '1.81.15', null);
select "schema".add_column('web', 'httpd_site_bind_headers', 'header',          'string',  false, false, false, 'the header name, without any final colon',    '1.81.15', null);
select "schema".add_column('web', 'httpd_site_bind_headers', 'value',           'string',   true, false, false, 'the header value, not used for all actions',  '1.81.15', null);
select "schema".add_column('web', 'httpd_site_bind_headers', 'replacement',     'string',   true, false, false, 'the replacement value, only used for "edit" and "edit*"', '1.81.15', null);
select "schema".add_column('web', 'httpd_site_bind_headers', 'when',            'string',   true, false, false, 'optional control over when is this header directive is applied', '1.81.15', null);
select "schema".add_column('web', 'httpd_site_bind_headers', 'comment',         'string',   true, false, false, 'an optional comment describing the redirect', '1.81.15', null);
