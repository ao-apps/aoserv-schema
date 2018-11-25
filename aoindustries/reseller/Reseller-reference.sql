alter table reseller."Reseller"
  add constraint accounting_fkey
  foreign key (accounting)
  references reseller."Brand" (accounting)
  on update cascade
  on delete restrict
;
