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
  references account."Administrator" (username)
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
  add constraint processor_fkey
  foreign key (processor)
  references credit_card_processors (provider_id)
  on delete restrict
  on update cascade
;
alter table transactions
  add constraint credit_card_transaction_fkey
  foreign key (credit_card_transaction)
  references credit_card_transactions (pkey)
  on delete restrict
  on update cascade
;
