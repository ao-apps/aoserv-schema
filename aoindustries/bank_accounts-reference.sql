alter table bank_accounts
  add constraint bank_fkey
  foreign key (bank)
  references banks (name)
  on delete restrict
  on update cascade
;
