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

select "schema".add_column('signup', 'signup_request_options', 'pkey',    'pkey',   false,  true, false, 'a generate unique id', '1.23', null);
select "schema".add_column('signup', 'signup_request_options', 'request', 'fkey',   false, false, false, 'the id of the request this option is part of', '1.23', null);
select "schema".add_column('signup', 'signup_request_options', 'name',    'string', false, false, false, 'the unique-per-request name of the option', '1.23', null);
select "schema".add_column('signup', 'signup_request_options', 'value',   'string',  true, false, false, 'the value of the option', '1.23', null);
