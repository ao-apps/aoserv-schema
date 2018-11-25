alter table ticket_brand_categories
  add constraint brand_fkey
  foreign key (brand)
  references brands (accounting)
  on update cascade
  on delete restrict
;
alter table ticket_brand_categories
  add constraint category_fkey
  foreign key (category)
  references reseller."Category" (pkey)
  on update cascade
  on delete restrict
;
