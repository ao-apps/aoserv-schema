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

select "schema".add_column('ticket', 'actions', 'pkey',          'pkey',     false,  true, false, '', '1.0a100', '1.43');
select "schema".add_column('ticket', 'actions', 'ticket_id',     'fkey',      true, false, false, '', '1.0a100', '1.43');
select "schema".add_column('ticket', 'actions', 'administrator', 'username', false, false, false, '', '1.0a100', '1.43');
select "schema".add_column('ticket', 'actions', 'time',          'time',     false, false, false, '', '1.0a100', '1.43');
select "schema".add_column('ticket', 'actions', 'action_type',   'string',   false, false, false, '', '1.0a100', '1.43');
select "schema".add_column('ticket', 'actions', 'old_value',     'string',    true, false, false, '', '1.0a100', '1.43');
select "schema".add_column('ticket', 'actions', 'comments',      'string',    true, false, false, '', '1.0a100', '1.43');
