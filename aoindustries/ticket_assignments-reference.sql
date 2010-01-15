alter table ticket_assignments
  add constraint tickets_fkey
  foreign key (ticket)
  references tickets (ticket_id)
  on update cascade
  on delete restrict
;
alter table ticket_assignments
  add constraint reseller_fkey
  foreign key (reseller)
  references resellers (accounting)
  on update cascade
  on delete restrict
;
alter table ticket_assignments
  add constraint administrator_fkey
  foreign key (administrator_accounting, administrator)
  references business_administrators (accounting, username)
  on update cascade
  on delete restrict
;
