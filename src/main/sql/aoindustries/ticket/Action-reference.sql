/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2009, 2010, 2013, 2018, 2020  AO Industries, Inc.
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

alter table ticket."Action"
  add constraint ticket_fkey
  foreign key (ticket)
  references ticket."Ticket" (id)
  on update cascade
  on delete restrict
;
alter table ticket."Action"
  add constraint administrator_fkey
  foreign key (administrator)
  references account."Administrator" (username)
  on update cascade
  on delete restrict
;
alter table ticket."Action"
  add constraint action_type_fkey
  foreign key (action_type)
  references ticket."ActionType" ("type")
  on update cascade
  on delete restrict
;
alter table ticket."Action"
  add constraint old_accounting_fkey
  foreign key (old_accounting)
  references account."Account" (accounting)
  on update cascade
  on delete restrict
;
alter table ticket."Action"
  add constraint new_accounting_fkey
  foreign key (new_accounting)
  references account."Account" (accounting)
  on update cascade
  on delete restrict
;
alter table ticket."Action"
  add constraint old_priority_fkey
  foreign key (old_priority)
  references ticket."Priority" (priority)
  on update cascade
  on delete restrict
;
alter table ticket."Action"
  add constraint new_priority_fkey
  foreign key (new_priority)
  references ticket."Priority" (priority)
  on update cascade
  on delete restrict
;
alter table ticket."Action"
  add constraint old_type_fkey
  foreign key (old_type)
  references ticket."TicketType" ("type")
  on update cascade
  on delete restrict
;
alter table ticket."Action"
  add constraint new_type_fkey
  foreign key (new_type)
  references ticket."TicketType" ("type")
  on update cascade
  on delete restrict
;
alter table ticket."Action"
  add constraint old_status_fkey
  foreign key (old_status)
  references ticket."Status" (status)
  on update cascade
  on delete restrict
;
alter table ticket."Action"
  add constraint new_status_fkey
  foreign key (new_status)
  references ticket."Status" (status)
  on update cascade
  on delete restrict
;
alter table ticket."Action"
  add constraint old_assigned_to_fkey
  foreign key (old_assigned_to)
  references account."Administrator" (username)
  on update cascade
  on delete restrict
;
alter table ticket."Action"
  add constraint new_assigned_to_fkey
  foreign key (new_assigned_to)
  references account."Administrator" (username)
  on update cascade
  on delete restrict
;
alter table ticket."Action"
  add constraint old_category_fkey
  foreign key (old_category)
  references reseller."Category" (id)
  on update cascade
  on delete restrict
;
alter table ticket."Action"
  add constraint new_category_fkey
  foreign key (new_category)
  references reseller."Category" (id)
  on update cascade
  on delete restrict
;
