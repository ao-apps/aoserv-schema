alter table ticket."Action"
  add constraint ticket_fkey
  foreign key (ticket)
  references tickets (pkey)
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
  references ticket."Category" (pkey)
  on update cascade
  on delete restrict
;
alter table ticket."Action"
  add constraint new_category_fkey
  foreign key (new_category)
  references ticket."Category" (pkey)
  on update cascade
  on delete restrict
;
