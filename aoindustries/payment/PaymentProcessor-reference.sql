alter table payment."PaymentProcessor"
  add constraint accounting_fkey
  foreign key (accounting)
  references account."Account" (accounting)
  on delete restrict
  on update cascade
;
alter table payment."PaymentProcessor"
  add constraint encryption_from_fkey
  foreign key (encryption_from)
  references pki."EncryptionKey" (pkey)
  on delete restrict
  on update cascade
;
alter table payment."PaymentProcessor"
  add constraint encryption_recipient_fkey
  foreign key (encryption_recipient)
  references pki."EncryptionKey" (pkey)
  on delete restrict
  on update cascade
;
