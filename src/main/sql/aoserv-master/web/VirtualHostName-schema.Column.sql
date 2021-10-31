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

select "schema".add_column('web', 'httpd_site_urls', 'pkey',            'pkey',        false,  true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('web', 'httpd_site_urls', 'httpd_site_bind', 'fkey',        false, false, false, 'the site that is being referenced', '1.0a100', null);
select "schema".add_column('web', 'httpd_site_urls', 'hostname',        'hostname',    false, false, false, 'the hostname that this site responds to', '1.0a100', '1.68');
select "schema".add_column('web', 'httpd_site_urls', 'hostname',        'domain_name', false, false, false, 'the hostname that this site responds to', '1.69', null);
select "schema".add_column('web', 'httpd_site_urls', 'is_primary',      'boolean',     false, false, false, E'flags if this is the primary hostname for a site.\nA site must have one and only one primary hostname\nat a time.  This constraint is implemented by the\napplication code.', '1.0a100', null);
