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

select "schema".add_column('ticket', 'tickets', 'pkey',                  'pkey',       false,  true, false, '', '1.0a100', null);
select "schema".add_column('ticket', 'tickets', 'brand',                 'accounting', false, false, false, '', '1.46', null);
select "schema".add_column('ticket', 'tickets', 'reseller',              'accounting', false, false, false, '', '1.44', null);
select "schema".add_column('ticket', 'tickets', 'package',               'package',    false, false, false, '', '1.0a100', '1.0a125');
select "schema".add_column('ticket', 'tickets', 'accounting',            'accounting',  true, false, false, '', '1.0a126', null);
select "schema".add_column('ticket', 'tickets', 'language',              'string',     false, false, false, '', '1.44', null);
select "schema".add_column('ticket', 'tickets', 'administrator',         'username',   false, false, false, '', '1.0a100', '1.0a125');
select "schema".add_column('ticket', 'tickets', 'created_by',            'username',    true, false, false, '', '1.0a126', null);
select "schema".add_column('ticket', 'tickets', 'category',              'fkey',        true, false, false, '', '1.44', null);
select "schema".add_column('ticket', 'tickets', 'ticket_type',           'string',     false, false, false, '', '1.0a100', null);
select "schema".add_column('ticket', 'tickets', 'from_address',          'email',       true, false, false, '', '1.44', null);
select "schema".add_column('ticket', 'tickets', 'summary',               'string',     false, false, false, '', '1.44', null);
select "schema".add_column('ticket', 'tickets', 'details',               'string',     false, false, false, '', '1.0a100', '1.43');
select "schema".add_column('ticket', 'tickets', 'details',               'string',      true, false, false, '', '1.44', null);
select "schema".add_column('ticket', 'tickets', 'raw_email',             'string',      true, false, false, '', '1.44', null);
select "schema".add_column('ticket', 'tickets', 'open_date',             'time',       false, false, false, '', '1.0a100', null);
select "schema".add_column('ticket', 'tickets', 'deadline',              'time',        true, false, false, '', '1.0a100', '1.43');
select "schema".add_column('ticket', 'tickets', 'close_date',            'time',        true, false, false, '', '1.0a100', '1.43');
select "schema".add_column('ticket', 'tickets', 'closed_by',             'username',    true, false, false, '', '1.0a100', '1.43');
select "schema".add_column('ticket', 'tickets', 'client_priority',       'string',     false, false, false, '', '1.0a100', null);
select "schema".add_column('ticket', 'tickets', 'admin_priority',        'string',     false, false, false, '', '1.0a100', '1.9');
select "schema".add_column('ticket', 'tickets', 'admin_priority',        'string',      true, false, false, '', '1.10', null);
select "schema".add_column('ticket', 'tickets', 'technology',            'string',      true, false, false, '', '1.0a100', '1.43');
select "schema".add_column('ticket', 'tickets', 'status',                'string',     false, false, false, '', '1.0a100', null);
select "schema".add_column('ticket', 'tickets', 'status_timeout',        'time',        true, false, false, '', '1.69', null);
select "schema".add_column('ticket', 'tickets', 'assigned_to',           'string',      true, false, false, '', '1.0a125', '1.43');
select "schema".add_column('ticket', 'tickets', 'contact_emails',        'string',     false, false, false, '', '1.0a125', null);
select "schema".add_column('ticket', 'tickets', 'contact_phone_numbers', 'string',     false, false, false, '', '1.0a125', null);
select "schema".add_column('ticket', 'tickets', 'internal_notes',        'string',     false, false, false, '', '1.69', null);
