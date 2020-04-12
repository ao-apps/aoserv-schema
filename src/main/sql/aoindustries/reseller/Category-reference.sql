alter table reseller."Category"
  add constraint parent_fkey
  foreign key (parent)
  references reseller."Category" (id)
  on update cascade
  on delete restrict
;
