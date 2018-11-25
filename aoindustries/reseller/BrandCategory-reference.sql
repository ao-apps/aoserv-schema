alter table reseller."BrandCategory"
  add constraint brand_fkey
  foreign key (brand)
  references reseller."Brand" (accounting)
  on update cascade
  on delete restrict
;
alter table reseller."BrandCategory"
  add constraint category_fkey
  foreign key (category)
  references reseller."Category" (pkey)
  on update cascade
  on delete restrict
;
