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

select aosh.add_command(
  'add_ticket',
  'ticket',
  'tickets',
  'adds a new ticket',
  '<i>package</i> <i>business_administrator</i> <i>type</i> <i>details</i> {""|<i>deadline</i>} <i>client_priority</i> <i>admin_priority</i> {""|<i>technology</i>}',
  '1.0a100',
  '1.0a124'
);
select aosh.add_command(
  'add_ticket',
  'ticket',
  'tickets',
  'adds a new ticket',
  '<i>package</i> <i>business_administrator</i> <i>type</i> <i>details</i> {""|<i>deadline</i>} <i>client_priority</i> <i>admin_priority</i> {""|<i>technology</i>} {""|<i>assigned_to</i>} {""|<i>contact_emails</i>} {""|<i>contact_phone_numbers</i>}',
  '1.0a125',
  '1.0a125'
);
select aosh.add_command(
  'add_ticket',
  'ticket',
  'tickets',
  'adds a new ticket',
  '<i>{""|accounting}</i> <i>business_administrator</i> <i>type</i> <i>details</i> {""|<i>deadline</i>} <i>client_priority</i> <i>admin_priority</i> {""|<i>technology</i>} {""|<i>assigned_to</i>} {""|<i>contact_emails</i>} {""|<i>contact_phone_numbers</i>}',
  '1.0a126',
  '1.43'
);
select aosh.add_command(
  'add_ticket_work',
  'ticket',
  'tickets',
  'adds work information to a ticket',
  '<i>ticket_id</i> <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
select aosh.add_command(
  'bounce_ticket',
  'ticket',
  'tickets',
  'bounces a ticket',
  '<i>ticket_id</i> <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
select aosh.add_command(
  'change_ticket_admin_priority',
  'ticket',
  'tickets',
  'changes the administrative priority of a ticket',
  '<i>ticket_id</i> <i>priority</i> <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
select aosh.add_command(
  'change_ticket_client_priority',
  'ticket',
  'tickets',
  'changes the client priority of a ticket',
  '<i>ticket_id</i> <i>priority</i> <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
select aosh.add_command(
  'change_ticket_deadline',
  'ticket',
  'tickets',
  'changes the deadline for a ticket',
  '<i>ticket_id</i> {""|<i>deadline</i>} <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
select aosh.add_command(
  'change_ticket_technology',
  'ticket',
  'tickets',
  'changes the technology associated with a ticket',
  '<i>ticket_id</i> {""|<i>technology</i>} <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
select aosh.add_command(
  'change_ticket_type',
  'ticket',
  'tickets',
  'changes the type of a ticket',
  '<i>ticket_id</i> <i>type</i> <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
select aosh.add_command(
  'complete_ticket',
  'ticket',
  'tickets',
  'completes a ticket',
  '<i>ticket_id</i> <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
select aosh.add_command(
  'hold_ticket',
  'ticket',
  'tickets',
  'places a ticket in the hold state',
  '<i>ticket_id</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
select aosh.add_command(
  'kill_ticket',
  'ticket',
  'tickets',
  'kills a ticket',
  '<i>ticket_id</i> <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
select aosh.add_command(
  'reactivate_ticket',
  'ticket',
  'tickets',
  'reactivates a ticket that is on hold',
  '<i>ticket_id</i> <i>business_administrator</i> <i>comments</i>',
  '1.0a100',
  '1.43'
);
