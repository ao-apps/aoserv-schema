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

select "schema".add_column('pki', 'ssl_certificate_other_uses', 'pkey',            'pkey',   false,  true, false, 'a generated primary key',                                                 '1.81.16', null);
select "schema".add_column('pki', 'ssl_certificate_other_uses', 'ssl_certificate', 'fkey',   false, false, false, 'the pkey of the SSL certificate this name is on',                         '1.81.16', null);
select "schema".add_column('pki', 'ssl_certificate_other_uses', 'sort_order',      'short',  false, false, false, 'the per-certificate unique sort ordering',                                '1.81.16', null);
select "schema".add_column('pki', 'ssl_certificate_other_uses', 'count',           'int',    false, false, false, 'the number of times this other resource uses the certificate',            '1.81.16', null);
select "schema".add_column('pki', 'ssl_certificate_other_uses', 'display',         'string', false, false, false, 'a short display value, which will often follow the count when displayed', '1.81.16', null);
