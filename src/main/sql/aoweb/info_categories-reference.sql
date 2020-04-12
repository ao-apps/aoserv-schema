alter table info_categories
  add constraint type_fkey
  foreign key (type)
  references info_types (type)
  on delete restrict
  on update cascade
;
