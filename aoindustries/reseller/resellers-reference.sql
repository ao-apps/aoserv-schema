alter table resellers
  add constraint accounting_fkey
  foreign key (accounting)
  references reseller."Brand" (accounting)
  on update cascade
  on delete restrict
;
