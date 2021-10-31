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

select "schema".add_column('ticket', 'ticket_actions', 'pkey',            'pkey',       false,  true, false, '', '1.44', null);
select "schema".add_column('ticket', 'ticket_actions', 'ticket',          'fkey',       false, false, false, '', '1.44', null);
select "schema".add_column('ticket', 'ticket_actions', 'administrator',   'username',    true, false, false, '', '1.44', null);
select "schema".add_column('ticket', 'ticket_actions', 'time',            'time',       false, false, false, '', '1.44', null);
select "schema".add_column('ticket', 'ticket_actions', 'action_type',     'string',     false, false, false, '', '1.44', null);
select "schema".add_column('ticket', 'ticket_actions', 'old_accounting',  'string',      true, false, false, '', '1.44', '1.68');
select "schema".add_column('ticket', 'ticket_actions', 'old_accounting',  'accounting',  true, false, false, '', '1.69', null);
select "schema".add_column('ticket', 'ticket_actions', 'new_accounting',  'string',      true, false, false, '', '1.44', '1.68');
select "schema".add_column('ticket', 'ticket_actions', 'new_accounting',  'accounting',  true, false, false, '', '1.69', null);
select "schema".add_column('ticket', 'ticket_actions', 'old_priority',    'string',      true, false, false, '', '1.44', null);
select "schema".add_column('ticket', 'ticket_actions', 'new_priority',    'string',      true, false, false, '', '1.44', null);
select "schema".add_column('ticket', 'ticket_actions', 'old_type',        'string',      true, false, false, '', '1.49', null);
select "schema".add_column('ticket', 'ticket_actions', 'new_type',        'string',      true, false, false, '', '1.49', null);
select "schema".add_column('ticket', 'ticket_actions', 'old_status',      'string',      true, false, false, '', '1.44', null);
select "schema".add_column('ticket', 'ticket_actions', 'new_status',      'string',      true, false, false, '', '1.44', null);
select "schema".add_column('ticket', 'ticket_actions', 'old_assigned_to', 'string',      true, false, false, '', '1.44', '1.80');
select "schema".add_column('ticket', 'ticket_actions', 'old_assigned_to', 'username',    true, false, false, '', '1.80.0', null);
select "schema".add_column('ticket', 'ticket_actions', 'new_assigned_to', 'string',      true, false, false, '', '1.44', '1.80');
select "schema".add_column('ticket', 'ticket_actions', 'new_assigned_to', 'username',    true, false, false, '', '1.80.0', null);
select "schema".add_column('ticket', 'ticket_actions', 'old_category',    'fkey',        true, false, false, '', '1.44', null);
select "schema".add_column('ticket', 'ticket_actions', 'new_category',    'fkey',        true, false, false, '', '1.44', null);
select "schema".add_column('ticket', 'ticket_actions', 'old_value',       'string',      true, false, false, '', '1.44', null);
select "schema".add_column('ticket', 'ticket_actions', 'new_value',       'string',      true, false, false, '', '1.44', null);
select "schema".add_column('ticket', 'ticket_actions', 'from_address',    'email',       true, false, false, '', '1.44', null);
select "schema".add_column('ticket', 'ticket_actions', 'summary',         'string',      true, false, false, '', '1.44', null);
select "schema".add_column('ticket', 'ticket_actions', 'details',         'string',      true, false, false, '', '1.44', null);
select "schema".add_column('ticket', 'ticket_actions', 'raw_email',       'string',      true, false, false, '', '1.44', null);
