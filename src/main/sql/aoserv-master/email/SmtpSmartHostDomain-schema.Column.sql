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

select "schema".add_column('email', 'email_smtp_smart_host_domains', 'pkey',             'pkey',        false,  true, false, 'a generated unique key', '1.57', null);
select "schema".add_column('email', 'email_smtp_smart_host_domains', 'smart_host',       'fkey',        false, false, false, 'the Smart Host that is being configured', '1.57', null);
select "schema".add_column('email', 'email_smtp_smart_host_domains', 'domain',           'hostname',    false, false, false, 'the specific domain that is being configured', '1.57', '1.68');
select "schema".add_column('email', 'email_smtp_smart_host_domains', 'domain',           'domain_name', false, false, false, 'the specific domain that is being configured', '1.69', null);
select "schema".add_column('email', 'email_smtp_smart_host_domains', 'domain_out_burst', 'int',          true, false, false, 'the domain-specific email burst limit, null means unlimited', '1.57', null);
select "schema".add_column('email', 'email_smtp_smart_host_domains', 'domain_out_rate',  'float',        true, false, false, 'the domain-specific email rate, null means unlimited', '1.57', null);
