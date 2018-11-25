alter table ticket."Assignment"
  add constraint tickets_fkey
  foreign key (ticket)
  references ticket."Ticket" (pkey)
  on update cascade
  on delete restrict
;
alter table ticket."Assignment"
  add constraint reseller_fkey
  foreign key (reseller)
  references reseller."Reseller" (accounting)
  on update cascade
  on delete restrict
;
alter table ticket."Assignment"
  add constraint administrator_fkey
  foreign key (administrator)
  references account."Administrator" (username)
  on update cascade
  on delete restrict
;
