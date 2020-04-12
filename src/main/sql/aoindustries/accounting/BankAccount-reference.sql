alter table accounting."BankAccount"
  add constraint bank_fkey
  foreign key (bank)
  references accounting."Bank" ("name")
  on delete restrict
  on update cascade
;
