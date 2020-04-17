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

select "schema".add_column('email', 'email_domains', 'pkey',      'pkey',        false,  true, false, 'a generated unique key', '1.0a100', null);
select "schema".add_column('email', 'email_domains', 'domain',    'hostname',    false, false, false, 'the domain that is hosted in the email', '1.0a100', '1.68');
select "schema".add_column('email', 'email_domains', 'domain',    'domain_name', false, false, false, 'the domain that is hosted in the email', '1.69', null);
select "schema".add_column('email', 'email_domains', 'ao_server', 'fkey',        false, false, false, 'the pkey of the server that is hosting the email', '1.0a100', null);
select "schema".add_column('email', 'email_domains', 'package',   'package',     false, false, false, 'the owner of the domain', '1.0a100', '1.80');
select "schema".add_column('email', 'email_domains', 'package',   'accounting',  false, false, false, 'the owner of the domain', '1.80.0', null);
