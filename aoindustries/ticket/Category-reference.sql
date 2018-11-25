alter table ticket."Category"
  add constraint parent_fkey
  foreign key (parent)
  references ticket."Category" (pkey)
  on update cascade
  on delete restrict
;
