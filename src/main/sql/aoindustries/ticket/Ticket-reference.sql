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
