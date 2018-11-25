alter table billing."Transaction"
  add constraint accounting_fkey
  foreign key (accounting)
  references account."Account" (accounting)
  on delete restrict
  on update cascade
;
alter table billing."Transaction"
  add constraint source_accounting_fkey
  foreign key (source_accounting)
  references account."Account" (accounting)
  on delete restrict
  on update cascade
;
alter table billing."Transaction"
  add constraint username_fkey
  foreign key (username)
  references account."Administrator" (username)
  on delete restrict
  on update cascade
;
alter table billing."Transaction"
  add constraint type_fkey
  foreign key ("type")
  references billing."TransactionType" ("name")
  on delete restrict
  on update cascade
;
alter table billing."Transaction"
  add constraint payment_type_fkey
  foreign key (payment_type)
  references payment_types ("name")
  on delete restrict
  on update cascade
;
alter table billing."Transaction"
  add constraint processor_fkey
  foreign key (processor)
  references payment."PaymentProcessor" (provider_id)
  on delete restrict
  on update cascade
;
alter table billing."Transaction"
  add constraint credit_card_transaction_fkey
  foreign key (credit_card_transaction)
  references credit_card_transactions (pkey)
  on delete restrict
  on update cascade
;
