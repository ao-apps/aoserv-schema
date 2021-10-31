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

select "schema".add_column('net', 'protocols', 'protocol',        'string',   false,  true, true, 'the unique name of the protocol', '1.0a100', null);
select "schema".add_column('net', 'protocols', 'port',            'int',      false, false, true, 'the default port of the protocol', '1.0a100', '1.68');
select "schema".add_column('net', 'protocols', 'port',            'fkey',     false, false, true, 'the default port of the protocol', '1.69', '1.80');
select "schema".add_column('net', 'protocols', 'port',            'net_port', false, false, true, 'the default port of the protocol', '1.80.0', null);
select "schema".add_column('net', 'protocols', 'name',            'string',   false, false, true, 'the name of the service', '1.0a100', null);
select "schema".add_column('net', 'protocols', 'is_user_service', 'boolean',  false, false, true, 'indicates that a user may add and remove this service', '1.0a105', null);
select "schema".add_column('net', 'protocols', 'net_protocol',    'string',   false, false, true, 'the default network protocol for this protocol', '1.0a105', '1.80');
