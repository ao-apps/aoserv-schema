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

select "schema".add_column('pki', 'ssl_certificate_names', 'pkey',            'pkey',        false,  true, false, 'a generated primary key',                                      '1.81.10', null);
select "schema".add_column('pki', 'ssl_certificate_names', 'ssl_certificate', 'fkey',        false, false, false, 'the pkey of the SSL certificate this name is on',              '1.81.10', null);
select "schema".add_column('pki', 'ssl_certificate_names', 'is_common_name',  'boolean',     false, false, false, 'indicates this is the Common Name (CN) or a Subject Alt Name', '1.81.10', null);
select "schema".add_column('pki', 'ssl_certificate_names', 'is_wildcard',     'boolean',     false, false, false, 'is a *.(domain) wildcard certificate',                         '1.81.10', null);
select "schema".add_column('pki', 'ssl_certificate_names', 'domain',          'domain_name', false, false, false, 'the domain name',                                              '1.81.10', null);
