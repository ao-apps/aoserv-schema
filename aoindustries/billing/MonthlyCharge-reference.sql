alter table billing."MonthlyCharge"
  add constraint accounting_fkey
  foreign key (accounting)
  references account."Account" (accounting)
  on delete restrict
  on update cascade
;
alter table billing."MonthlyCharge"
  add constraint package_fkey
  foreign key (package)
  references billing."Package" ("name")
  on delete restrict
  on update cascade
;
alter table billing."MonthlyCharge"
  add constraint type_fkey
  foreign key ("type")
  references billing."TransactionType" ("name")
  on delete restrict
  on update cascade
;
alter table billing."MonthlyCharge"
  add constraint "rate.currency_fkey"
  foreign key ("rate.currency")
  references billing."Currency" ("currencyCode")
  on delete restrict
  on update cascade
;
alter table billing."MonthlyCharge"
  add constraint created_by_fkey
  foreign key (created_by)
  references account."Administrator" (username)
  on delete restrict
  on update cascade
;
