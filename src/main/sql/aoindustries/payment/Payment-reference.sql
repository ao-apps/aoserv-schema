alter table payment."Payment"
  add constraint processor_id_fkey
  foreign key (processor_id)
  references payment."Processor" (provider_id)
  on delete restrict
  on update cascade
;
alter table payment."Payment"
  add constraint accounting_fkey
  foreign key (accounting)
  references account."Account" (accounting)
  on delete restrict
  on update cascade
;
alter table payment."Payment"
  add constraint currency_fkey
  foreign key (currency)
  references billing."Currency" ("currencyCode")
  on delete restrict
  on update cascade
;
alter table payment."Payment"
  add constraint shipping_country_code_fkey
  foreign key (shipping_country_code)
  references payment."CountryCode" (code)
  on delete restrict
  on update cascade
;
alter table payment."Payment"
  add constraint credit_card_created_by_fkey
  foreign key (credit_card_created_by)
  references account."Administrator" (username)
  on delete restrict
  on update cascade
;
alter table payment."Payment"
  add constraint credit_card_accounting_fkey
  foreign key (credit_card_accounting)
  references account."Account" (accounting)
  on delete restrict
  on update cascade
;
alter table payment."Payment"
  add constraint credit_card_country_code_fkey
  foreign key (credit_card_country_code)
  references payment."CountryCode" (code)
  on delete restrict
  on update cascade
;
alter table payment."Payment"
  add constraint authorization_username_fkey
  foreign key (authorization_username)
  references account."Administrator" (username)
  on delete restrict
  on update cascade
;
alter table payment."Payment"
  add constraint capture_username_fkey
  foreign key (capture_username)
  references account."Administrator" (username)
  on delete restrict
  on update cascade
;
alter table payment."Payment"
  add constraint void_username_fkey
  foreign key (void_username)
  references account."Administrator" (username)
  on delete restrict
  on update cascade
;
