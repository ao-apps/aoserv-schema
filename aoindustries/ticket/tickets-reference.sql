alter table tickets
  add constraint brand_fkey
  foreign key (brand)
  references brands (accounting)
  on update cascade
  on delete restrict
;
alter table tickets
  add constraint reseller_fkey
  foreign key (reseller)
  references resellers (accounting)
  on update cascade
  on delete restrict
;
alter table tickets
  add constraint accounting_fkey
  foreign key (accounting)
  references account."Account" (accounting)
  on update cascade
  on delete restrict
;
alter table tickets
  add constraint language_fkey
  foreign key (language)
  references languages (code)
  on update cascade
  on delete restrict
;
alter table tickets
  add constraint created_by_fkey
  foreign key (created_by)
  references account."Administrator" (username)
  on update cascade
  on delete restrict
;
alter table tickets
  add constraint category_fkey
  foreign key (category)
  references ticket_categories (pkey)
  on update cascade
  on delete restrict
;
alter table tickets
  add constraint ticket_type_fkey
  foreign key (ticket_type)
  references ticket_types (type)
  on update cascade
  on delete restrict
;
alter table tickets
  add constraint client_priority_fkey
  foreign key (client_priority)
  references ticket_priorities (priority)
  on update cascade
  on delete restrict
;
alter table tickets
  add constraint admin_priority_fkey
  foreign key (admin_priority)
  references ticket_priorities (priority)
  on update cascade
  on delete restrict
;
alter table tickets
  add constraint status_fkey
  foreign key (status)
  references ticket."Status" (status)
  on update cascade
  on delete restrict
;
