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

begin;
insert into ticket."ActionType" values('set_business', false); -- Was SB
insert into ticket."ActionType" values('set_contact_emails', false); -- Was SE
insert into ticket."ActionType" values('set_contact_phone_numbers', false); -- Was SP
insert into ticket."ActionType" values('set_client_priority', false); -- Was CP
insert into ticket."ActionType" values('set_summary', false);
insert into ticket."ActionType" values('add_annotation', false); -- Was WK
insert into ticket."ActionType" values('set_type', true);
insert into ticket."ActionType" values('set_status', false); -- Was AH, AK, BO, CH, CK, CO, RE
insert into ticket."ActionType" values('set_admin_priority', true); -- Was AP
insert into ticket."ActionType" values('assign', true); -- Was AS
insert into ticket."ActionType" values('set_category', false); -- Was TY
insert into ticket."ActionType" values('set_internal_notes', true);
commit;

-- These are no longer used:
-- OP	Ticket opened
-- DL	Ticket deadline changed
-- TC	Relevent technology changed
