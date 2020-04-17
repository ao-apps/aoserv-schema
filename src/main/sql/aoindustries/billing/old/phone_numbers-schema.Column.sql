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

select "schema".add_column('billing', 'phone_numbers', 'pkey',     'pkey',   false,  true, false, 'a generated, unique id', '1.0a100', '1.30');
select "schema".add_column('billing', 'phone_numbers', 'created',  'time',   false, false, false, 'time the entry was created', '1.0a100', '1.30');
select "schema".add_column('billing', 'phone_numbers', 'business', 'string', false, false, false, 'the name of the business', '1.0a100', '1.30');
select "schema".add_column('billing', 'phone_numbers', 'person',   'string', false, false, false, 'the name of the individual', '1.0a100', '1.30');
select "schema".add_column('billing', 'phone_numbers', 'work',     'phone',  false, false, false, 'the work number', '1.0a100', '1.30');
select "schema".add_column('billing', 'phone_numbers', 'cell',     'phone',  false, false, false, 'the cell number', '1.0a100', '1.30');
select "schema".add_column('billing', 'phone_numbers', 'home',     'phone',  false, false, false, 'the home number', '1.0a100', '1.30');
select "schema".add_column('billing', 'phone_numbers', 'fax',      'phone',  false, false, false, 'the fax number', '1.0a100', '1.30');
