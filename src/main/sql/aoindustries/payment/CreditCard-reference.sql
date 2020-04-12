alter table payment."CreditCard"
  add constraint accounting_fkey
  foreign key (accounting)
  references account."Account" (accounting)
  on delete restrict
  on update cascade
;
alter table payment."CreditCard"
  add constraint processor_id_fkey
  foreign key (processor_id)
  references payment."Processor" (provider_id)
  on delete restrict
  on update cascade
;
alter table payment."CreditCard"
  add constraint country_code_fkey
  foreign key (country_code)
  references payment."CountryCode" (code)
  on delete restrict
  on update cascade
;
alter table payment."CreditCard"
  add constraint created_by_fkey
  foreign key (created_by)
  references account."Administrator" (username)
  on delete restrict
  on update cascade
;
alter table payment."CreditCard"
  add constraint encryption_card_number_from_fkey
  foreign key (encryption_card_number_from)
  references pki."EncryptionKey" (id)
  on delete restrict
  on update cascade
;
alter table payment."CreditCard"
  add constraint encryption_card_number_recipient_fkey
  foreign key (encryption_card_number_recipient)
  references pki."EncryptionKey" (id)
  on delete restrict
  on update cascade
;
