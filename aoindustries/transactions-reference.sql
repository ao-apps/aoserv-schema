alter table transactions
  add constraint accounting_fkey
  foreign key (accounting)
  references businesses (accounting)
  on delete restrict
  on update cascade
;
alter table transactions
  add constraint source_accounting_fkey
  foreign key (source_accounting)
  references businesses (accounting)
  on delete restrict
  on update cascade
;
alter table transactions
  add constraint username_fkey
  foreign key (username)
  references business_administrators (username)
  on delete restrict
  on update cascade
;
alter table transactions
  add constraint type_fkey
  foreign key (type)
  references transaction_types (name)
  on delete restrict
  on update cascade
;
alter table transactions
  add constraint payment_type_fkey
  foreign key (payment_type)
  references payment_types (name)
  on delete restrict
  on update cascade
;
alter table transactions
  add constraint merchant_account_fkey
  foreign key (merchant_account)
  references merchant_accounts (name)
  on delete restrict
  on update cascade
;
