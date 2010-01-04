alter table bank_transactions
  add constraint bank_account_fkey
  foreign key (bank_account)
  references bank_accounts ("name")
  on delete restrict
  on update cascade
;
alter table bank_transactions
  add constraint processor_fkey
  foreign key (processor)
  references credit_card_processors (provider_id)
  on delete restrict
  on update cascade
;
alter table bank_transactions
  add constraint administrator_fkey
  foreign key (administrator)
  references master_users (username)
  on delete restrict
  on update cascade
;
alter table bank_transactions
  add constraint type_fkey
  foreign key ("type")
  references bank_transaction_types ("type")
  on delete restrict
  on update cascade
;
alter table bank_transactions
  add constraint expense_code_fkey
  foreign key (expense_code)
  references expense_categories (expense_code)
  on delete restrict
  on update cascade
;
