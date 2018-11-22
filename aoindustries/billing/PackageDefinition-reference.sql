alter table billing."PackageDefinition"
  add constraint category_fkey
  foreign key (category)
  references billing."PackageCategory" ("name")
  on delete restrict
  on update cascade
;
alter table billing."PackageDefinition"
  add constraint accounting_fkey
  foreign key (accounting)
  references account."Account" (accounting)
  on delete restrict
  on update cascade
;
alter table billing."PackageDefinition"
  add constraint setup_fee_transaction_type_fkey
  foreign key (setup_fee_transaction_type)
  references billing."TransactionType" ("name")
  on delete restrict
  on update cascade
;
alter table billing."PackageDefinition"
  add constraint monthly_rate_transaction_type_fkey
  foreign key (monthly_rate_transaction_type)
  references billing."TransactionType" ("name")
  on delete restrict
  on update cascade
;
