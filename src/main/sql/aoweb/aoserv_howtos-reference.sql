alter table aoserv_howtos
  add constraint category_fkey
  foreign key (category)
  references aoserv_howto_categories (category)
  on delete restrict
  on update cascade
;
