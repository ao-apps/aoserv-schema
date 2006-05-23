alter table merchant_accounts
  add constraint bank_account_fkey
  foreign key (bank_account)
  references bank_accounts (name)
  on delete restrict
  on update cascade
;
