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

select "schema".add_foreign_key('ticket', 'ticket_actions', 'ticket',          'ticket',   'tickets',                 'pkey',       '1.44',   null);
select "schema".add_foreign_key('ticket', 'ticket_actions', 'administrator',   'account',  'business_administrators', 'username',   '1.44',   null);
select "schema".add_foreign_key('ticket', 'ticket_actions', 'action_type',     'ticket',   'ticket_action_types',     'type',       '1.44',   null);
select "schema".add_foreign_key('ticket', 'ticket_actions', 'old_accounting',  'account',  'businesses',              'accounting', '1.44',   '1.68');
select "schema".add_foreign_key('ticket', 'ticket_actions', 'old_accounting',  'account',  'businesses',              'accounting', '1.69',   null);
select "schema".add_foreign_key('ticket', 'ticket_actions', 'new_accounting',  'account',  'businesses',              'accounting', '1.44',   '1.68');
select "schema".add_foreign_key('ticket', 'ticket_actions', 'new_accounting',  'account',  'businesses',              'accounting', '1.69',   null);
select "schema".add_foreign_key('ticket', 'ticket_actions', 'old_priority',    'ticket',   'ticket_priorities',       'priority',   '1.44',   null);
select "schema".add_foreign_key('ticket', 'ticket_actions', 'new_priority',    'ticket',   'ticket_priorities',       'priority',   '1.44',   null);
select "schema".add_foreign_key('ticket', 'ticket_actions', 'old_type',        'ticket',   'ticket_types',            'type',       '1.49',   null);
select "schema".add_foreign_key('ticket', 'ticket_actions', 'new_type',        'ticket',   'ticket_types',            'type',       '1.49',   null);
select "schema".add_foreign_key('ticket', 'ticket_actions', 'old_status',      'ticket',   'ticket_stati',            'status',     '1.44',   null);
select "schema".add_foreign_key('ticket', 'ticket_actions', 'new_status',      'ticket',   'ticket_stati',            'status',     '1.44',   null);
select "schema".add_foreign_key('ticket', 'ticket_actions', 'old_assigned_to', 'account',  'business_administrators', 'username',   '1.44',   '1.80');
select "schema".add_foreign_key('ticket', 'ticket_actions', 'old_assigned_to', 'account',  'business_administrators', 'username',   '1.80.0', null);
select "schema".add_foreign_key('ticket', 'ticket_actions', 'new_assigned_to', 'account',  'business_administrators', 'username',   '1.44',   '1.80');
select "schema".add_foreign_key('ticket', 'ticket_actions', 'new_assigned_to', 'account',  'business_administrators', 'username',   '1.80.0', null);
select "schema".add_foreign_key('ticket', 'ticket_actions', 'old_category',    'reseller', 'ticket_categories',       'pkey',       '1.44',   null);
select "schema".add_foreign_key('ticket', 'ticket_actions', 'new_category',    'reseller', 'ticket_categories',       'pkey',       '1.44',   null);
