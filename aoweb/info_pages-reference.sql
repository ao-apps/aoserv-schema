alter table info_pages
  add constraint category_fkey
  foreign key (category)
  references info_categories (pkey)
  on delete restrict
  on update cascade
;
