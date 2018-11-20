alter table resellers
  add constraint accounting_fkey
  foreign key (accounting)
  references brands (accounting)
  on update cascade
  on delete restrict
;
