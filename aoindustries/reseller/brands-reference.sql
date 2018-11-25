alter table brands
  add constraint accounting_fkey
  foreign key (accounting)
  references account."Account" (accounting)
  on update cascade
  on delete restrict
;
alter table brands
  add constraint smtp_linux_server_account_fkey
  foreign key (smtp_linux_server_account)
  references linux."UserServer" (pkey)
  on update cascade
  on delete restrict
;
alter table brands
  add constraint imap_linux_server_account_fkey
  foreign key (imap_linux_server_account)
  references linux."UserServer" (pkey)
  on update cascade
  on delete restrict
;
alter table brands
  add constraint support_email_address_fkey
  foreign key (support_email_address)
  references email."Address" (pkey)
  on update cascade
  on delete restrict
;
alter table brands
  add constraint signup_email_address_fkey
  foreign key (signup_email_address)
  references email."Address" (pkey)
  on update cascade
  on delete restrict
;
alter table brands
  add constraint ticket_encryption_from_fkey
  foreign key (ticket_encryption_from)
  references pki."EncryptionKey" (pkey)
  on update cascade
  on delete restrict
;
alter table brands
  add constraint ticket_encryption_recipient_fkey
  foreign key (ticket_encryption_recipient)
  references pki."EncryptionKey" (pkey)
  on update cascade
  on delete restrict
;
alter table brands
  add constraint signup_encryption_from_fkey
  foreign key (signup_encryption_from)
  references pki."EncryptionKey" (pkey)
  on update cascade
  on delete restrict
;
alter table brands
  add constraint signup_encryption_recipient_fkey
  foreign key (signup_encryption_recipient)
  references pki."EncryptionKey" (pkey)
  on update cascade
  on delete restrict
;
alter table brands
  add constraint aoweb_struts_vnc_bind_fkey
  foreign key (aoweb_struts_vnc_bind)
  references net."Bind" (pkey)
  on update cascade
  on delete restrict
;
