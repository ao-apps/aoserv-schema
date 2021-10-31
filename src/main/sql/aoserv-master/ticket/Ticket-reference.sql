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
 * along with aoserv-schema.  If not, see <https://www.gnu.org/licenses/>.
 */

alter table ticket."Ticket"
  add constraint brand_fkey
  foreign key (brand)
  references reseller."Brand" (accounting)
  on update cascade
  on delete restrict
;
alter table ticket."Ticket"
  add constraint reseller_fkey
  foreign key (reseller)
  references reseller."Reseller" (accounting)
  on update cascade
  on delete restrict
;
alter table ticket."Ticket"
  add constraint accounting_fkey
  foreign key (accounting)
  references account."Account" (accounting)
  on update cascade
  on delete restrict
;
alter table ticket."Ticket"
  add constraint language_fkey
  foreign key ("language")
  references ticket."Language" (code)
  on update cascade
  on delete restrict
;
alter table ticket."Ticket"
  add constraint created_by_fkey
  foreign key (created_by)
  references account."Administrator" (username)
  on update cascade
  on delete restrict
;
alter table ticket."Ticket"
  add constraint category_fkey
  foreign key (category)
  references reseller."Category" (id)
  on update cascade
  on delete restrict
;
alter table ticket."Ticket"
  add constraint ticket_type_fkey
  foreign key (ticket_type)
  references ticket."TicketType" ("type")
  on update cascade
  on delete restrict
;
alter table ticket."Ticket"
  add constraint client_priority_fkey
  foreign key (client_priority)
  references ticket."Priority" (priority)
  on update cascade
  on delete restrict
;
alter table ticket."Ticket"
  add constraint admin_priority_fkey
  foreign key (admin_priority)
  references ticket."Priority" (priority)
  on update cascade
  on delete restrict
;
alter table ticket."Ticket"
  add constraint status_fkey
  foreign key (status)
  references ticket."Status" (status)
  on update cascade
  on delete restrict
;
