alter table credit_card_transactions
  add constraint processor_id_fkey
  foreign key (processor_id)
  references credit_card_processors (provider_id)
  on delete restrict
  on update cascade
;
alter table credit_card_transactions
  add constraint accounting_fkey
  foreign key (accounting)
  references businesses (accounting)
  on delete restrict
  on update cascade
;
alter table credit_card_transactions
  add constraint shipping_country_code_fkey
  foreign key (shipping_country_code)
  references country_codes (code)
  on delete restrict
  on update cascade
;
alter table credit_card_transactions
  add constraint credit_card_created_by_fkey
  foreign key (credit_card_created_by)
  references business_administrators (username)
  on delete restrict
  on update cascade
;
alter table credit_card_transactions
  add constraint credit_card_accounting_fkey
  foreign key (credit_card_accounting)
  references businesses (accounting)
  on delete restrict
  on update cascade
;
alter table credit_card_transactions
  add constraint credit_card_country_code_fkey
  foreign key (credit_card_country_code)
  references country_codes (code)
  on delete restrict
  on update cascade
;
alter table credit_card_transactions
  add constraint authorization_username_fkey
  foreign key (authorization_username)
  references business_administrators (username)
  on delete restrict
  on update cascade
;
alter table credit_card_transactions
  add constraint capture_username_fkey
  foreign key (capture_username)
  references business_administrators (username)
  on delete restrict
  on update cascade
;
alter table credit_card_transactions
  add constraint void_username_fkey
  foreign key (void_username)
  references business_administrators (username)
  on delete restrict
  on update cascade
;
