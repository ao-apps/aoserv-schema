alter table ticket_categories
  add constraint parent_fkey
  foreign key (parent)
  references ticket_categories (pkey)
  on update cascade
  on delete restrict
;
